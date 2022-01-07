
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsl_sata_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_SC_DET_DISABLE ;
 int DELAY (int) ;
 int FSL_SATA_P_HCTRL ;
 int FSL_SATA_P_HCTRL_HC_ON ;
 int FSL_SATA_P_HCTRL_INT_MASK ;
 int FSL_SATA_P_SCTL ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int fsl_sata_stop (struct fsl_sata_channel*) ;

__attribute__((used)) static int
fsl_sata_deinit(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);
 uint32_t r;


 r = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, r & ~FSL_SATA_P_HCTRL_INT_MASK);

 fsl_sata_stop(ch);

 ATA_OUTL(ch->r_mem, FSL_SATA_P_SCTL, 0);
 DELAY(100);

 ATA_OUTL(ch->r_mem, FSL_SATA_P_SCTL, ATA_SC_DET_DISABLE);
 r = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL);

 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, r & ~FSL_SATA_P_HCTRL_HC_ON);
 return (0);
}
