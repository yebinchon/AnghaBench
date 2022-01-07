
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int FO_CONF_OFF (int ,int ,int ,int ) ;
 int PCIE_REGMAX ;
 int ofw_pci_read_config_common (int ,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static uint32_t
fire_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{

 return (ofw_pci_read_config_common(dev, PCIE_REGMAX, FO_CONF_OFF(bus,
     slot, func, reg), bus, slot, func, reg, width));
}
