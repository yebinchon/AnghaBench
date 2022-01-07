
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_val; scalar_t__ c_name; } ;
typedef TYPE_1__ CODE ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int
get_log_mapping(const char *str, const CODE *c)
{
 const CODE *cp;
 for (cp = c; cp->c_name; cp++)
  if (strcmp(cp->c_name, str) == 0)
   return cp->c_val;
 return -1;
}
