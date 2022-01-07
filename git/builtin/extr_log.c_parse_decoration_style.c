
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECORATE_FULL_REFS ;
 int DECORATE_SHORT_REFS ;
 int auto_decoration_style () ;
 int git_parse_maybe_bool (char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_decoration_style(const char *value)
{
 switch (git_parse_maybe_bool(value)) {
 case 1:
  return DECORATE_SHORT_REFS;
 case 0:
  return 0;
 default:
  break;
 }
 if (!strcmp(value, "full"))
  return DECORATE_FULL_REFS;
 else if (!strcmp(value, "short"))
  return DECORATE_SHORT_REFS;
 else if (!strcmp(value, "auto"))
  return auto_decoration_style();




 return -1;
}
