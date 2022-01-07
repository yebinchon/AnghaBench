
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ PCIB_POWER_FOR_SLEEP (int ,int ,int*) ;
 int device_get_parent (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int pci_set_powerstate (int ,int) ;

__attribute__((used)) static void
pci_set_power_child(device_t dev, device_t child, int state)
{
 device_t pcib;
 int dstate;
 pcib = device_get_parent(dev);
 dstate = state;
 if (device_is_attached(child) &&
     PCIB_POWER_FOR_SLEEP(pcib, child, &dstate) == 0)
  pci_set_powerstate(child, dstate);
}
