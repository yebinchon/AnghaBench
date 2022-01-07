
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int ) ;
 int SIIS_P_CTLSET ;
 int SIIS_P_CTL_PORT_RESET ;
 struct siis_channel* device_get_softc (int ) ;

__attribute__((used)) static int
siis_ch_deinit(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);


 ATA_OUTL(ch->r_mem, SIIS_P_CTLSET, SIIS_P_CTL_PORT_RESET);
 return (0);
}
