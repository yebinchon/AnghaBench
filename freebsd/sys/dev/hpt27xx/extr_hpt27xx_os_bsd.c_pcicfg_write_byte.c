
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPT_U8 ;


 int pci_cfgregwrite (int ,int ,int ,int ,int ,int) ;

void pcicfg_write_byte (HPT_U8 bus, HPT_U8 dev, HPT_U8 func, HPT_U8 reg, HPT_U8 v)
{
 pci_cfgregwrite(bus, dev, func, reg, v, 1);
}
