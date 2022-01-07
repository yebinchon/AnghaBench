
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {int * ocd_str; } ;
typedef int phandle_t ;


 scalar_t__ ofw_bus_node_is_compatible (int ,int *) ;

__attribute__((used)) static const struct ofw_compat_data *
uart_fdt_find_compatible(phandle_t node, const struct ofw_compat_data *cd)
{
 const struct ofw_compat_data *ocd;

 for (ocd = cd; ocd->ocd_str != ((void*)0); ocd++) {
  if (ofw_bus_node_is_compatible(node, ocd->ocd_str))
   return (ocd);
 }
 return (((void*)0));
}
