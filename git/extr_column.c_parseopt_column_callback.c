
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {unsigned int* value; } ;


 unsigned int COL_ENABLED ;
 unsigned int COL_ENABLE_MASK ;
 unsigned int COL_PARSEOPT ;
 int parse_config (unsigned int*,char const*) ;

int parseopt_column_callback(const struct option *opt,
        const char *arg, int unset)
{
 unsigned int *colopts = opt->value;
 *colopts |= COL_PARSEOPT;
 *colopts &= ~COL_ENABLE_MASK;
 if (unset)
  return 0;

 *colopts |= COL_ENABLED;
 if (arg)
  return parse_config(colopts, arg);

 return 0;
}
