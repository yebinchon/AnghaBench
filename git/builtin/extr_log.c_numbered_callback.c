
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 scalar_t__ auto_number ;
 int numbered_cmdline_opt ;

__attribute__((used)) static int numbered_callback(const struct option *opt, const char *arg,
        int unset)
{
 BUG_ON_OPT_ARG(arg);
 *(int *)opt->value = numbered_cmdline_opt = unset ? 0 : 1;
 if (unset)
  auto_number = 0;
 return 0;
}
