
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int exclude_arg ;

__attribute__((used)) static int exclude_existing_callback(const struct option *opt, const char *arg,
         int unset)
{
 BUG_ON_OPT_NEG(unset);
 exclude_arg = 1;
 *(const char **)opt->value = arg;
 return 0;
}
