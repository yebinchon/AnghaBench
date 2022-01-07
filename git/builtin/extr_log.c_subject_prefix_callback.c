
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {char const* subject_prefix; } ;
struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int subject_prefix ;

__attribute__((used)) static int subject_prefix_callback(const struct option *opt, const char *arg,
       int unset)
{
 BUG_ON_OPT_NEG(unset);
 subject_prefix = 1;
 ((struct rev_info *)opt->value)->subject_prefix = arg;
 return 0;
}
