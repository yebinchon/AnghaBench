
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skip_prefix (char const*,char const*,char const**) ;

__attribute__((used)) static int opt_with_value(const char *arg, const char *opt, const char **value)
{
 if (skip_prefix(arg, opt, &arg)) {
  if (!*arg) {
   *value = ((void*)0);
   return 1;
  }
  if (*arg++ == '=') {
   *value = arg;
   return 1;
  }
 }
 return 0;
}
