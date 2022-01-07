
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int is_rev_argument(const char *arg)
{
 static const char *rev_args[] = {
  "--all",
  "--bisect",
  "--dense",
  "--branches=",
  "--branches",
  "--header",
  "--ignore-missing",
  "--max-age=",
  "--max-count=",
  "--min-age=",
  "--no-merges",
  "--min-parents=",
  "--no-min-parents",
  "--max-parents=",
  "--no-max-parents",
  "--objects",
  "--objects-edge",
  "--parents",
  "--pretty",
  "--remotes=",
  "--remotes",
  "--glob=",
  "--sparse",
  "--tags=",
  "--tags",
  "--topo-order",
  "--date-order",
  "--unpacked",
  ((void*)0)
 };
 const char **p = rev_args;


 if ((*arg == '-') && isdigit(arg[1]))
  return 1;

 for (;;) {
  const char *str = *p++;
  int len;
  if (!str)
   return 0;
  len = strlen(str);
  if (!strcmp(arg, str) ||
      (str[len-1] == '=' && !strncmp(arg, str, len)))
   return 1;
 }
}
