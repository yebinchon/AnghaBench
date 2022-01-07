
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPT_U8 ;


 int pci_cfgregread (int ,int ,int ,int ,int) ;

HPT_U8 pcicfg_read_byte (HPT_U8 bus, HPT_U8 dev, HPT_U8 func, HPT_U8 reg)
{
 return (HPT_U8)pci_cfgregread(bus, dev, func, reg, 1);
}
