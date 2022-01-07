
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int value; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int refresh (int ,int ) ;

__attribute__((used)) static int refresh_callback(const struct option *opt,
    const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 return refresh(opt->value, 0);
}
