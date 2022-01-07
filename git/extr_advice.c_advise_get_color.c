
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_advice { ____Placeholder_color_advice } color_advice ;


 char const** advice_colors ;
 int advice_use_color ;
 scalar_t__ want_color_stderr (int ) ;

__attribute__((used)) static const char *advise_get_color(enum color_advice ix)
{
 if (want_color_stderr(advice_use_color))
  return advice_colors[ix];
 return "";
}
