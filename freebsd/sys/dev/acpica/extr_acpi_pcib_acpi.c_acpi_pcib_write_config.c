
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int pci_cfgregwrite (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
acpi_pcib_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t data, int bytes)
{
    pci_cfgregwrite(bus, slot, func, reg, data, bytes);
}
