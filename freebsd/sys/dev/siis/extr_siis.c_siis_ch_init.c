
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int r_mem; scalar_t__ pm_present; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int ) ;
 int SIIS_P_CTLCLR ;
 int SIIS_P_CTLSET ;
 int SIIS_P_CTL_32BIT ;
 int SIIS_P_CTL_PME ;
 int SIIS_P_CTL_PORT_RESET ;
 int SIIS_P_IESET ;
 int SIIS_P_IX_ENABLED ;
 struct siis_channel* device_get_softc (int ) ;

__attribute__((used)) static int
siis_ch_init(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);


 ATA_OUTL(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_PORT_RESET);
 ATA_OUTL(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_32BIT);
 if (ch->pm_present)
  ATA_OUTL(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_PME);
 else
  ATA_OUTL(ch->r_mem, SIIS_P_CTLCLR, SIIS_P_CTL_PME);

 ATA_OUTL(ch->r_mem, SIIS_P_IESET, SIIS_P_IX_ENABLED);
 return (0);
}
