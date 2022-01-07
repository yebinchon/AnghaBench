
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; int long_name; } ;


 int RECURSE_SUBMODULES_OFF ;
 int die (char*,int ) ;
 int parse_push_recurse_submodules_arg (int ,char const*) ;

__attribute__((used)) static int option_parse_recurse_submodules(const struct option *opt,
       const char *arg, int unset)
{
 int *recurse_submodules = opt->value;

 if (unset)
  *recurse_submodules = RECURSE_SUBMODULES_OFF;
 else if (arg)
  *recurse_submodules = parse_push_recurse_submodules_arg(opt->long_name, arg);
 else
  die("%s missing parameter", opt->long_name);

 return 0;
}
