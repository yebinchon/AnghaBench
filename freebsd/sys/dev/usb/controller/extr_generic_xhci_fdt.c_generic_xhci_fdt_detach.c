
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phy_t ;
typedef int phandle_t ;
typedef int device_t ;


 int generic_xhci_detach (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ phy_get_by_ofw_property (int ,int ,char*,int *) ;
 int phy_release (int ) ;

__attribute__((used)) static int
generic_xhci_fdt_detach(device_t dev)
{




 int err;

 err = generic_xhci_detach(dev);
 if (err != 0)
  return (err);







 return (0);
}
