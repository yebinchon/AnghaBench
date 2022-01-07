
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsl_sata_channel {scalar_t__ numrslots; int pm_level; int r_mem; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int FSL_SATA_PCC_LPB_EN ;
 int FSL_SATA_P_PCC ;
 int FSL_SATA_P_PCC_PARTIAL ;
 int FSL_SATA_P_PCC_SLUMBER ;

__attribute__((used)) static void
fsl_sata_pm(void *arg)
{
 struct fsl_sata_channel *ch = (struct fsl_sata_channel *)arg;
 uint32_t work;

 if (ch->numrslots != 0)
  return;
 work = ATA_INL(ch->r_mem, FSL_SATA_P_PCC) & ~FSL_SATA_PCC_LPB_EN;
 if (ch->pm_level == 4)
  work |= FSL_SATA_P_PCC_PARTIAL;
 else
  work |= FSL_SATA_P_PCC_SLUMBER;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_PCC, work);
}
