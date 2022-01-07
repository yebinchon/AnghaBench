
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_t ;
typedef int phandle_t ;
typedef int device_t ;


 int device_printf (int ,char*) ;
 int generic_xhci_attach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ phy_enable (int ) ;
 scalar_t__ phy_get_by_ofw_property (int ,int ,char*,int *) ;

__attribute__((used)) static int
generic_xhci_fdt_attach(device_t dev)
{
 return (generic_xhci_attach(dev));
}
