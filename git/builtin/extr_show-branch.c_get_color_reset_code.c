
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* GIT_COLOR_RESET ;
 int showbranch_use_color ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static const char *get_color_reset_code(void)
{
 if (want_color(showbranch_use_color))
  return GIT_COLOR_RESET;
 return "";
}
