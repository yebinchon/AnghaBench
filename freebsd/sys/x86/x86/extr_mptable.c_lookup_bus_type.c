
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int name; } ;


 int MAX_BUSTYPE ;
 int UNKNOWN_BUSTYPE ;
 TYPE_1__* bus_type_table ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int
lookup_bus_type(char *name)
{
 int x;

 for (x = 0; x < MAX_BUSTYPE; ++x)
  if (strncmp(bus_type_table[x].name, name, 6) == 0)
   return (bus_type_table[x].type);

 return (UNKNOWN_BUSTYPE);
}
