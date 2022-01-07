
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_OUTL (int ,int ,int ) ;
 int EDMA_IEM ;
 int MVS_EDMA_OFF ;
 struct mvs_channel* device_get_softc (int ) ;
 int mvs_set_edma_mode (int ,int ) ;

__attribute__((used)) static int
mvs_ch_deinit(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);


 mvs_set_edma_mode(dev, MVS_EDMA_OFF);

 ATA_OUTL(ch->r_mem, EDMA_IEM, 0);
 return (0);
}
