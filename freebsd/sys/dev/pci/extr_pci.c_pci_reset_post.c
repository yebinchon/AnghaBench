
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 scalar_t__ device_get_parent (scalar_t__) ;
 int pci_restore_state (scalar_t__) ;

__attribute__((used)) static int
pci_reset_post(device_t dev, device_t child)
{

 if (dev == device_get_parent(child))
  pci_restore_state(child);
 return (0);
}
