
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int work_bus; } ;
struct fsl_sata_channel {int r_mem; TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int FSL_SATA_CL_OFFSET ;
 int FSL_SATA_PCC_LPB_EN ;
 int FSL_SATA_P_CHBA ;
 int FSL_SATA_P_HCTRL ;
 int FSL_SATA_P_HCTRL_ENT ;
 int FSL_SATA_P_HCTRL_HC_FORCE_OFF ;
 int FSL_SATA_P_HCTRL_HC_ON ;
 int FSL_SATA_P_HCTRL_INT_MASK ;
 int FSL_SATA_P_HCTRL_PM ;
 int FSL_SATA_P_HSTS ;
 int FSL_SATA_P_HSTS_HS_ON ;
 int FSL_SATA_P_ICC ;
 int FSL_SATA_P_ICC_ITC_S ;
 int FSL_SATA_P_PCC ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int fsl_sata_start (struct fsl_sata_channel*) ;
 int fsl_sata_wait_register (struct fsl_sata_channel*,int ,int ,int ,int) ;

__attribute__((used)) static int
fsl_sata_init(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);
 uint64_t work;
 uint32_t r;


 r = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL);
 r &= ~FSL_SATA_P_HCTRL_HC_ON;
 r |= FSL_SATA_P_HCTRL_HC_FORCE_OFF;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, r & ~FSL_SATA_P_HCTRL_INT_MASK);
 fsl_sata_wait_register(ch, FSL_SATA_P_HSTS,
     FSL_SATA_P_HSTS_HS_ON, 0, 1000);

 work = ch->dma.work_bus + FSL_SATA_CL_OFFSET;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_CHBA, work);
 r &= ~FSL_SATA_P_HCTRL_ENT;
 r &= ~FSL_SATA_P_HCTRL_PM;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL, r);
 r = ATA_INL(ch->r_mem, FSL_SATA_P_PCC);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_PCC, r & ~FSL_SATA_PCC_LPB_EN);
 ATA_OUTL(ch->r_mem, FSL_SATA_P_ICC, (1 << FSL_SATA_P_ICC_ITC_S));
 fsl_sata_start(ch);
 return (0);
}
