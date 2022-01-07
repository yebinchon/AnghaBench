
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fsl_sata_channel {int r_mem; } ;
struct cam_sim {int dummy; } ;


 scalar_t__ ATA_INL (int ,int ) ;
 int FSL_SATA_P_HSTS ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int fsl_sata_intr_main (struct fsl_sata_channel*,scalar_t__) ;

__attribute__((used)) static void
fsl_satapoll(struct cam_sim *sim)
{
 struct fsl_sata_channel *ch = (struct fsl_sata_channel *)cam_sim_softc(sim);
 uint32_t istatus;


 istatus = ATA_INL(ch->r_mem, FSL_SATA_P_HSTS);
 if (istatus != 0)
  fsl_sata_intr_main(ch, istatus);
}
