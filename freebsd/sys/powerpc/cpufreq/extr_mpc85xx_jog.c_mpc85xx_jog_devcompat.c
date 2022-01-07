
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int * ocd_str; } ;
typedef int phandle_t ;


 int OF_finddevice (char*) ;
 struct ofw_compat_data* jog_compat ;
 scalar_t__ ofw_bus_find_compatible (int,int *) ;

__attribute__((used)) static struct ofw_compat_data *
mpc85xx_jog_devcompat()
{
 phandle_t node;
 int i;

 node = OF_finddevice("/soc");
 if (node == -1)
  return (((void*)0));

 for (i = 0; jog_compat[i].ocd_str != ((void*)0); i++)
  if (ofw_bus_find_compatible(node, jog_compat[i].ocd_str) > 0)
   break;

 if (jog_compat[i].ocd_str == ((void*)0))
  return (((void*)0));

 return (&jog_compat[i]);
}
