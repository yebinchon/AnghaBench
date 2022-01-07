
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mvs_channel {int r_mem; int curr_mode; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int EDMA_IEC ;
 int EDMA_IEM ;
 int EDMA_IE_TRANSIENT ;
 int MVS_EDMA_OFF ;
 int MVS_EDMA_UNKNOWN ;
 int SATA_FISC ;
 int SATA_FISC_FISWAIT4HOSTRDYEN_B1 ;
 int SATA_FISIC ;
 int SATA_FISIM ;
 int SATA_SE ;
 struct mvs_channel* device_get_softc (int ) ;
 int mvs_set_edma_mode (int ,int ) ;

__attribute__((used)) static int
mvs_ch_init(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 uint32_t reg;


 ATA_OUTL(ch->r_mem, EDMA_IEM, 0);

 ch->curr_mode = MVS_EDMA_UNKNOWN;
 mvs_set_edma_mode(dev, MVS_EDMA_OFF);

 ATA_OUTL(ch->r_mem, SATA_FISIC, 0);
 reg = ATA_INL(ch->r_mem, SATA_FISC);
 reg |= SATA_FISC_FISWAIT4HOSTRDYEN_B1;
 ATA_OUTL(ch->r_mem, SATA_FISC, reg);
 reg = ATA_INL(ch->r_mem, SATA_FISIM);
 reg |= SATA_FISC_FISWAIT4HOSTRDYEN_B1;
 ATA_OUTL(ch->r_mem, SATA_FISC, reg);

 ATA_OUTL(ch->r_mem, SATA_SE, 0xffffffff);

 ATA_OUTL(ch->r_mem, EDMA_IEC, 0);

 ATA_OUTL(ch->r_mem, EDMA_IEM, ~EDMA_IE_TRANSIENT);
 return (0);
}
