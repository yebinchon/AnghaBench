
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int numbered_callback (struct option const*,char const*,int) ;

__attribute__((used)) static int no_numbered_callback(const struct option *opt, const char *arg,
    int unset)
{
 BUG_ON_OPT_NEG(unset);
 return numbered_callback(opt, arg, 1);
}
