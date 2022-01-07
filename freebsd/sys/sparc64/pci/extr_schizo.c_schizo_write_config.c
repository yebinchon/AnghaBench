
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int PCI_REGMAX ;
 int STX_CONF_OFF (int ,int ,int ,int ) ;
 int ofw_pci_write_config_common (int ,int ,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
schizo_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int width)
{

 ofw_pci_write_config_common(dev, PCI_REGMAX, STX_CONF_OFF(bus, slot,
     func, reg), bus, slot, func, reg, val, width);
}
