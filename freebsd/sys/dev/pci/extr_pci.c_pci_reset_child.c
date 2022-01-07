
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int BUS_RESET_POST (int *,int *) ;
 int BUS_RESET_PREPARE (int *,int *) ;
 int BUS_RESUME_CHILD (int *,int *) ;
 int BUS_SUSPEND_CHILD (int *,int *) ;
 int DEVF_RESET_DETACH ;
 scalar_t__ DS_ATTACHED ;
 int device_detach (int *) ;
 int * device_get_parent (int *) ;
 scalar_t__ device_get_state (int *) ;
 int device_probe_and_attach (int *) ;
 int pci_power_reset (int *) ;
 int pcie_flr (int *,int,int) ;

__attribute__((used)) static int
pci_reset_child(device_t dev, device_t child, int flags)
{
 int error;

 if (dev == ((void*)0) || device_get_parent(child) != dev)
  return (0);
 if ((flags & DEVF_RESET_DETACH) != 0) {
  error = device_get_state(child) == DS_ATTACHED ?
      device_detach(child) : 0;
 } else {
  error = BUS_SUSPEND_CHILD(dev, child);
 }
 if (error == 0) {
  if (!pcie_flr(child, 1000, 0)) {
   error = BUS_RESET_PREPARE(dev, child);
   if (error == 0)
    pci_power_reset(child);
   BUS_RESET_POST(dev, child);
  }
  if ((flags & DEVF_RESET_DETACH) != 0)
   device_probe_and_attach(child);
  else
   BUS_RESUME_CHILD(dev, child);
 }
 return (error);
}
