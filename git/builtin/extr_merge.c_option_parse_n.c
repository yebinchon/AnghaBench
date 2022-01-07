
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int show_diffstat ;

__attribute__((used)) static int option_parse_n(const struct option *opt,
     const char *arg, int unset)
{
 BUG_ON_OPT_ARG(arg);
 show_diffstat = unset;
 return 0;
}
