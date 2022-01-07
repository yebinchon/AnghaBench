
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int refmap ;
 int refspec_append (int *,char const*) ;

__attribute__((used)) static int parse_refmap_arg(const struct option *opt, const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);





 refspec_append(&refmap, arg);

 return 0;
}
