
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct seeprom_config {int max_targets; int brtime_id; int* device_flags; int bios_control; int adapter_control; } ;
struct ahd_transinfo {int protocol_version; int transport_version; int ppr_options; int period; int offset; int width; } ;
struct ahd_tmode_tstate {int discenable; int tagenable; } ;
struct ahd_softc {int our_id; int user_discenable; int user_tagenable; int features; int flags; } ;
struct TYPE_4__ {int protocol_version; int transport_version; } ;
struct TYPE_3__ {int protocol_version; int transport_version; } ;
struct ahd_initiator_tinfo {TYPE_2__ curr; TYPE_1__ goal; struct ahd_transinfo user; } ;
struct ahd_devinfo {int dummy; } ;


 int AHD_ASYNC_XFER_PERIOD ;
 int AHD_BIOS_ENABLED ;
 int AHD_EXTENDED_TRANS_A ;
 int AHD_FATAL_ERROR (struct ahd_softc*) ;
 int AHD_PERIOD_10MHz ;
 int AHD_RESET_BUS_A ;
 int AHD_RTI ;
 int AHD_SHOW_MISC ;
 int AHD_SPCHK_ENB_A ;
 int AHD_STPWLEVEL_A ;
 int AHD_SYNCRATE_160 ;
 int AHD_SYNCRATE_DT ;
 int AHD_TRANS_CUR ;
 int AHD_TRANS_GOAL ;
 int CAM_LUN_WILDCARD ;
 int CFBIOSSTATE ;
 int CFBS_ENABLED ;
 int CFDISC ;
 int CFEXTEND ;
 int CFMAXTARG ;
 int CFPACKETIZED ;
 int CFQAS ;
 int CFRESETB ;
 int CFSCSIID ;
 int CFSPARITY ;
 int CFSTPWLEVEL ;
 int CFWIDEB ;
 int CFXFER ;
 int CFXFER_ASYNC ;
 int ENOMEM ;
 int MAX_OFFSET ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_HOLD_MCS ;
 int MSG_EXT_PPR_IU_REQ ;
 int MSG_EXT_PPR_QAS_REQ ;
 int MSG_EXT_PPR_RD_STRM ;
 int MSG_EXT_PPR_RTI ;
 int MSG_EXT_PPR_WR_FLOW ;
 int MSG_EXT_WDTR_BUS_16_BIT ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int ROLE_INITIATOR ;
 int TRUE ;
 int * ahd_alloc_tstate (struct ahd_softc*,int,char) ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int,int,int ,char,int ) ;
 int ahd_debug ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,int,int,struct ahd_tmode_tstate**) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int,int,int ) ;
 int printf (char*,...) ;

int
ahd_parse_cfgdata(struct ahd_softc *ahd, struct seeprom_config *sc)
{
 int targ;
 int max_targ;

 max_targ = sc->max_targets & CFMAXTARG;
 ahd->our_id = sc->brtime_id & CFSCSIID;






 if (ahd_alloc_tstate(ahd, ahd->our_id, 'A') == ((void*)0)) {
  printf("%s: unable to allocate ahd_tmode_tstate.  "
         "Failing attach\n", ahd_name(ahd));
  AHD_FATAL_ERROR(ahd);
  return (ENOMEM);
 }

 for (targ = 0; targ < max_targ; targ++) {
  struct ahd_devinfo devinfo;
  struct ahd_initiator_tinfo *tinfo;
  struct ahd_transinfo *user_tinfo;
  struct ahd_tmode_tstate *tstate;
  uint16_t target_mask;

  tinfo = ahd_fetch_transinfo(ahd, 'A', ahd->our_id,
         targ, &tstate);
  user_tinfo = &tinfo->user;




  tinfo->user.protocol_version = 4;
  tinfo->user.transport_version = 4;

  target_mask = 0x01 << targ;
  ahd->user_discenable &= ~target_mask;
  tstate->discenable &= ~target_mask;
  ahd->user_tagenable &= ~target_mask;
  if (sc->device_flags[targ] & CFDISC) {
   tstate->discenable |= target_mask;
   ahd->user_discenable |= target_mask;
   ahd->user_tagenable |= target_mask;
  } else {



   sc->device_flags[targ] &= ~CFPACKETIZED;
  }

  user_tinfo->ppr_options = 0;
  user_tinfo->period = (sc->device_flags[targ] & CFXFER);
  if (user_tinfo->period < CFXFER_ASYNC) {
   if (user_tinfo->period <= AHD_PERIOD_10MHz)
    user_tinfo->ppr_options |= MSG_EXT_PPR_DT_REQ;
   user_tinfo->offset = MAX_OFFSET;
  } else {
   user_tinfo->offset = 0;
   user_tinfo->period = AHD_ASYNC_XFER_PERIOD;
  }





  if ((sc->device_flags[targ] & CFPACKETIZED) != 0) {
   user_tinfo->ppr_options |= MSG_EXT_PPR_RD_STRM
      | MSG_EXT_PPR_WR_FLOW
      | MSG_EXT_PPR_HOLD_MCS
      | MSG_EXT_PPR_IU_REQ;
   if ((ahd->features & AHD_RTI) != 0)
    user_tinfo->ppr_options |= MSG_EXT_PPR_RTI;
  }

  if ((sc->device_flags[targ] & CFQAS) != 0)
   user_tinfo->ppr_options |= MSG_EXT_PPR_QAS_REQ;

  if ((sc->device_flags[targ] & CFWIDEB) != 0)
   user_tinfo->width = MSG_EXT_WDTR_BUS_16_BIT;
  else
   user_tinfo->width = MSG_EXT_WDTR_BUS_8_BIT;
  tstate->tagenable &= ~target_mask;
  tinfo->goal.protocol_version = 2;
  tinfo->goal.transport_version = 2;
  tinfo->curr.protocol_version = 2;
  tinfo->curr.transport_version = 2;
  ahd_compile_devinfo(&devinfo, ahd->our_id,
        targ, CAM_LUN_WILDCARD,
        'A', ROLE_INITIATOR);
  ahd_set_width(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHD_TRANS_CUR|AHD_TRANS_GOAL, TRUE);
  ahd_set_syncrate(ahd, &devinfo, 0, 0,
                    0, AHD_TRANS_CUR|AHD_TRANS_GOAL,
               TRUE);
 }

 ahd->flags &= ~AHD_SPCHK_ENB_A;
 if (sc->bios_control & CFSPARITY)
  ahd->flags |= AHD_SPCHK_ENB_A;

 ahd->flags &= ~AHD_RESET_BUS_A;
 if (sc->bios_control & CFRESETB)
  ahd->flags |= AHD_RESET_BUS_A;

 ahd->flags &= ~AHD_EXTENDED_TRANS_A;
 if (sc->bios_control & CFEXTEND)
  ahd->flags |= AHD_EXTENDED_TRANS_A;

 ahd->flags &= ~AHD_BIOS_ENABLED;
 if ((sc->bios_control & CFBIOSSTATE) == CFBS_ENABLED)
  ahd->flags |= AHD_BIOS_ENABLED;

 ahd->flags &= ~AHD_STPWLEVEL_A;
 if ((sc->adapter_control & CFSTPWLEVEL) != 0)
  ahd->flags |= AHD_STPWLEVEL_A;

 return (0);
}
