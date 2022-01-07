
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_push { ____Placeholder_color_push } color_push ;


 char const** push_colors ;
 int push_use_color ;
 scalar_t__ want_color_stderr (int ) ;

__attribute__((used)) static const char *push_get_color(enum color_push ix)
{
 if (want_color_stderr(push_use_color))
  return push_colors[ix];
 return "";
}
