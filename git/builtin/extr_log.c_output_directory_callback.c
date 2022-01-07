
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int die (int ) ;

__attribute__((used)) static int output_directory_callback(const struct option *opt, const char *arg,
         int unset)
{
 const char **dir = (const char **)opt->value;
 BUG_ON_OPT_NEG(unset);
 if (*dir)
  die(_("two output directories?"));
 *dir = arg;
 return 0;
}
