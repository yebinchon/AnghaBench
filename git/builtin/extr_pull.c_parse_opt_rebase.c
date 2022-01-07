
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* value; } ;
typedef enum rebase_type { ____Placeholder_rebase_type } rebase_type ;


 int REBASE_FALSE ;
 int REBASE_INVALID ;
 int REBASE_TRUE ;
 int parse_config_rebase (char*,char const*,int ) ;

__attribute__((used)) static int parse_opt_rebase(const struct option *opt, const char *arg, int unset)
{
 enum rebase_type *value = opt->value;

 if (arg)
  *value = parse_config_rebase("--rebase", arg, 0);
 else
  *value = unset ? REBASE_FALSE : REBASE_TRUE;
 return *value == REBASE_INVALID ? -1 : 0;
}
