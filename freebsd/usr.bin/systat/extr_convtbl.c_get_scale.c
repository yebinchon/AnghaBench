
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int SC_AUTO ;
 TYPE_1__* convtbl ;
 scalar_t__ strcmp (int ,char const*) ;

int
get_scale(const char *name)
{
 int i;

 for (i = 0; i <= SC_AUTO; i++)
  if (strcmp(convtbl[i].name, name) == 0)
   return (i);
 return (-1);
}
