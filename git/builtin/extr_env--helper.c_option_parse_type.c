
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int ENV_HELPER_TYPE_BOOL ;
 int ENV_HELPER_TYPE_ULONG ;
 int _ (char*) ;
 int cmdmode ;
 int die (int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int option_parse_type(const struct option *opt, const char *arg,
        int unset)
{
 if (!strcmp(arg, "bool"))
  cmdmode = ENV_HELPER_TYPE_BOOL;
 else if (!strcmp(arg, "ulong"))
  cmdmode = ENV_HELPER_TYPE_ULONG;
 else
  die(_("unrecognized --type argument, %s"), arg);

 return 0;
}
