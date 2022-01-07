
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsl_sata_channel {scalar_t__ eslots; int dev; int r_mem; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int ) ;
 int FSL_SATA_P_HCTRL ;
 int FSL_SATA_P_HCTRL_HC_FORCE_OFF ;
 int FSL_SATA_P_HCTRL_HC_ON ;
 int FSL_SATA_P_HSTS ;
 int FSL_SATA_P_HSTS_HS_ON ;
 int device_printf (int ,char*) ;
 scalar_t__ fsl_sata_wait_register (struct fsl_sata_channel*,int ,int ,int ,int) ;

__attribute__((used)) static void
fsl_sata_stop(struct fsl_sata_channel *ch)
{
 uint32_t cmd;
 int i;


 cmd = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL);
 cmd &= ~FSL_SATA_P_HCTRL_HC_ON;

 for (i = 0; i < 2; i++) {
  ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, cmd);
  if (fsl_sata_wait_register(ch, FSL_SATA_P_HSTS,
      FSL_SATA_P_HSTS_HS_ON, 0, 500)) {
   if (i != 0)
    device_printf(ch->dev,
        "stopping FSL SATA engine failed\n");
   cmd |= FSL_SATA_P_HCTRL_HC_FORCE_OFF;
  } else
   break;
 }
 ch->eslots = 0;
}
