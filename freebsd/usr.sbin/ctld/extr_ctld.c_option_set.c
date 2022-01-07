
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int o_value; } ;


 int checked_strdup (char const*) ;
 int free (int ) ;

void
option_set(struct option *o, const char *value)
{

 free(o->o_value);
 o->o_value = checked_strdup(value);
}
