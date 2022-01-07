
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ vpd_reg; } ;
struct TYPE_5__ {TYPE_1__ vpd; } ;
typedef TYPE_2__ pcicfgregs ;
typedef int device_t ;


 int DELAY (int) ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 scalar_t__ PCIR_VPD_ADDR ;
 scalar_t__ PCIR_VPD_DATA ;
 int PCI_VPD_TIMEOUT ;
 int REG (scalar_t__,int) ;
 int WREG (scalar_t__,int,int) ;

__attribute__((used)) static int
pci_read_vpd_reg(device_t pcib, pcicfgregs *cfg, int reg, uint32_t *data)
{
 int count = PCI_VPD_TIMEOUT;

 KASSERT((reg & 3) == 0, ("VPD register must by 4 byte aligned"));

 WREG(cfg->vpd.vpd_reg + PCIR_VPD_ADDR, reg, 2);

 while ((REG(cfg->vpd.vpd_reg + PCIR_VPD_ADDR, 2) & 0x8000) != 0x8000) {
  if (--count < 0)
   return (ENXIO);
  DELAY(1);
 }
 *data = (REG(cfg->vpd.vpd_reg + PCIR_VPD_DATA, 4));

 return (0);
}
