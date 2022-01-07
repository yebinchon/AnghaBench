
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** column_colors_ansi ;
 int column_colors_ansi_max ;
 int showbranch_use_color ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static const char *get_color_code(int idx)
{
 if (want_color(showbranch_use_color))
  return column_colors_ansi[idx % column_colors_ansi_max];
 return "";
}
