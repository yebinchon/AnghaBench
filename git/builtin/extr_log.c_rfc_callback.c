
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int subject_prefix_callback (struct option const*,char*,int) ;

__attribute__((used)) static int rfc_callback(const struct option *opt, const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 return subject_prefix_callback(opt, "RFC PATCH", unset);
}
