
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int ofw_bus_get_node (int ) ;

void
fdt_reset_register_provider(device_t provider)
{

 OF_device_register_xref(
     OF_xref_from_node(ofw_bus_get_node(provider)), provider);
}
