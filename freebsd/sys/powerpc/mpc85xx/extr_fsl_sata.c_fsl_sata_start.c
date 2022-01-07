
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fsl_sata_channel {int r_mem; scalar_t__ pm_present; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int FSL_SATA_P_CER ;
 int FSL_SATA_P_DER ;
 int FSL_SATA_P_HCTRL ;
 int FSL_SATA_P_HCTRL_HC_FORCE_OFF ;
 int FSL_SATA_P_HCTRL_HC_ON ;
 int FSL_SATA_P_HCTRL_PM ;
 int FSL_SATA_P_HCTRL_SNOOP ;
 int FSL_SATA_P_HSTS ;
 int FSL_SATA_P_HSTS_PR ;
 int FSL_SATA_P_SERR ;
 int fsl_sata_wait_register (struct fsl_sata_channel*,int ,int,int,int) ;

__attribute__((used)) static void
fsl_sata_start(struct fsl_sata_channel *ch)
{
 u_int32_t cmd;


 ATA_OUTL(ch->r_mem, FSL_SATA_P_SERR, 0xFFFFFFFF);

 ATA_OUTL(ch->r_mem, FSL_SATA_P_HSTS, 0x3F);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_CER, 0xFFFF);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_DER, 0xFFFF);

 cmd = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL);
 cmd |= FSL_SATA_P_HCTRL_HC_ON | FSL_SATA_P_HCTRL_SNOOP;
 cmd &= ~FSL_SATA_P_HCTRL_HC_FORCE_OFF;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, cmd |
     (ch->pm_present ? FSL_SATA_P_HCTRL_PM : 0));
 fsl_sata_wait_register(ch, FSL_SATA_P_HSTS,
     FSL_SATA_P_HSTS_PR, FSL_SATA_P_HSTS_PR, 500);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HSTS,
     ATA_INL(ch->r_mem, FSL_SATA_P_HSTS) & FSL_SATA_P_HSTS_PR);
}
