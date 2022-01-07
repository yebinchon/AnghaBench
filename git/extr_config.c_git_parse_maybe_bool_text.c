
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int git_parse_maybe_bool_text(const char *value)
{
 if (!value)
  return 1;
 if (!*value)
  return 0;
 if (!strcasecmp(value, "true")
     || !strcasecmp(value, "yes")
     || !strcasecmp(value, "on"))
  return 1;
 if (!strcasecmp(value, "false")
     || !strcasecmp(value, "no")
     || !strcasecmp(value, "off"))
  return 0;
 return -1;
}
