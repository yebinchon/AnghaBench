
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * device_t ;


 int PCIEM_CTL_NOSNOOP_ENABLE ;
 int PCIEM_CTL_RELAXED_ORD_ENABLE ;
 int PCIER_DEVICE_CTL ;
 int device_get_nameunit (int *) ;
 int device_printf (int *,char*,...) ;
 int * pci_find_pcie_root_port (int *) ;
 int pcie_adjust_config (int *,int ,int,int ,int) ;

__attribute__((used)) static void
t5_attribute_workaround(device_t dev)
{
 device_t root_port;
 uint32_t v;
 root_port = pci_find_pcie_root_port(dev);
 if (root_port == ((void*)0)) {
  device_printf(dev, "Unable to find parent root port\n");
  return;
 }

 v = pcie_adjust_config(root_port, PCIER_DEVICE_CTL,
     PCIEM_CTL_RELAXED_ORD_ENABLE | PCIEM_CTL_NOSNOOP_ENABLE, 0, 2);
 if ((v & (PCIEM_CTL_RELAXED_ORD_ENABLE | PCIEM_CTL_NOSNOOP_ENABLE)) !=
     0)
  device_printf(dev, "Disabled No Snoop/Relaxed Ordering on %s\n",
      device_get_nameunit(root_port));
}
