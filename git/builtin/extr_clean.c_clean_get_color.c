
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_clean { ____Placeholder_color_clean } color_clean ;


 char const** clean_colors ;
 int clean_use_color ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static const char *clean_get_color(enum color_clean ix)
{
 if (want_color(clean_use_color))
  return clean_colors[ix];
 return "";
}
