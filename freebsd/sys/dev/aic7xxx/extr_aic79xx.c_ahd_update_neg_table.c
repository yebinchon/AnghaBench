
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct ahd_transinfo {int period; int offset; int ppr_options; scalar_t__ width; } ;
struct ahd_softc {int bugs; int features; int iocell_opts; } ;
struct ahd_devinfo {int target; } ;
typedef int ahd_mode_state ;


 size_t AHD_AMPLITUDE_INDEX ;
 int AHD_ANNEXCOL_AMPLITUDE ;
 int AHD_ANNEXCOL_PRECOMP_SLEW ;
 int AHD_MODE_SCSI ;
 int AHD_NEW_IOCELL_OPTS ;
 int AHD_PACED_NEGTABLE_BUG ;
 int AHD_PRECOMP_MASK ;
 size_t AHD_PRECOMP_SLEW_INDEX ;
 int AHD_SLEWRATE_MASK ;
 int AHD_SYNCRATE_160 ;
 int AHD_SYNCRATE_ASYNC ;
 int AHD_SYNCRATE_REVA_160 ;
 int ANNEXCOL ;
 int ANNEXDAT ;
 int ENAUTOATNO ;
 int ENSLOWCRC ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_IU_REQ ;
 int MSG_EXT_PPR_PCOMP_EN ;
 int MSG_EXT_PPR_QAS_REQ ;
 int MSG_EXT_PPR_RTI ;
 scalar_t__ MSG_EXT_WDTR_BUS_16_BIT ;
 int NEGCONOPTS ;
 int NEGOADDR ;
 int NEGOFFSET ;
 int NEGPERIOD ;
 int NEGPPROPTS ;
 int PPROPT_PACE ;
 int WIDEXFER ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static void
ahd_update_neg_table(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
       struct ahd_transinfo *tinfo)
{
 ahd_mode_state saved_modes;
 u_int period;
 u_int ppr_opts;
 u_int con_opts;
 u_int offset;
 u_int saved_negoaddr;
 uint8_t iocell_opts[sizeof(ahd->iocell_opts)];

 saved_modes = ahd_save_modes(ahd);
 ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

 saved_negoaddr = ahd_inb(ahd, NEGOADDR);
 ahd_outb(ahd, NEGOADDR, devinfo->target);
 period = tinfo->period;
 offset = tinfo->offset;
 memcpy(iocell_opts, ahd->iocell_opts, sizeof(ahd->iocell_opts));
 ppr_opts = tinfo->ppr_options & (MSG_EXT_PPR_QAS_REQ|MSG_EXT_PPR_DT_REQ
     |MSG_EXT_PPR_IU_REQ|MSG_EXT_PPR_RTI);
 con_opts = 0;
 if (period == 0)
  period = AHD_SYNCRATE_ASYNC;
 if (period == AHD_SYNCRATE_160) {

  if ((ahd->bugs & AHD_PACED_NEGTABLE_BUG) != 0) {
   ppr_opts |= PPROPT_PACE;
   offset *= 2;







   period = AHD_SYNCRATE_REVA_160;
  }
  if ((tinfo->ppr_options & MSG_EXT_PPR_PCOMP_EN) == 0)
   iocell_opts[AHD_PRECOMP_SLEW_INDEX] &=
       ~AHD_PRECOMP_MASK;
 } else {



  iocell_opts[AHD_PRECOMP_SLEW_INDEX] &= ~AHD_PRECOMP_MASK;

  if ((ahd->features & AHD_NEW_IOCELL_OPTS) != 0
   && (ppr_opts & MSG_EXT_PPR_DT_REQ) != 0
   && (ppr_opts & MSG_EXT_PPR_IU_REQ) == 0) {






   con_opts |= ENSLOWCRC;
  }

  if ((ahd->bugs & AHD_PACED_NEGTABLE_BUG) != 0) {




   iocell_opts[AHD_PRECOMP_SLEW_INDEX] &=
       ~AHD_SLEWRATE_MASK;
  }
 }

 ahd_outb(ahd, ANNEXCOL, AHD_ANNEXCOL_PRECOMP_SLEW);
 ahd_outb(ahd, ANNEXDAT, iocell_opts[AHD_PRECOMP_SLEW_INDEX]);
 ahd_outb(ahd, ANNEXCOL, AHD_ANNEXCOL_AMPLITUDE);
 ahd_outb(ahd, ANNEXDAT, iocell_opts[AHD_AMPLITUDE_INDEX]);

 ahd_outb(ahd, NEGPERIOD, period);
 ahd_outb(ahd, NEGPPROPTS, ppr_opts);
 ahd_outb(ahd, NEGOFFSET, offset);

 if (tinfo->width == MSG_EXT_WDTR_BUS_16_BIT)
  con_opts |= WIDEXFER;






 if ((tinfo->ppr_options & MSG_EXT_PPR_IU_REQ) == 0)
  con_opts |= ENAUTOATNO;
 ahd_outb(ahd, NEGCONOPTS, con_opts);
 ahd_outb(ahd, NEGOADDR, saved_negoaddr);
 ahd_restore_modes(ahd, saved_modes);
}
