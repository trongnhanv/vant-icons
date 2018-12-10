@font-face {
  font-style: normal;
  font-weight: normal;
  font-family: '<%= fontName %>';
  src: url('https://img.yzcdn.cn/vant/<%= cssClass %>') format('truetype');
}

.van-icon {
  position: relative;
  display: inline-block;
  font: normal normal normal 14px/1 "<%= fontName %>";
  font-size: inherit;
  text-rendering: auto;

  &::before {
    display: inline-block;
  }
}

<% _.each(glyphs, function(glyph) { %>.van-icon-<%= glyph.fileName %>:before {
  content: "\<%= glyph.codePoint %>";
}

<% }); %>
