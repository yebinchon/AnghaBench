
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct ahd_tmode_tstate {int discenable; int tagenable; } ;
struct ahd_softc {int our_id; int user_discenable; int user_tagenable; int features; } ;
struct TYPE_6__ {int protocol_version; int transport_version; } ;
struct TYPE_5__ {int protocol_version; int transport_version; } ;
struct TYPE_4__ {int protocol_version; int transport_version; int ppr_options; int width; int offset; int period; } ;
struct ahd_initiator_tinfo {TYPE_3__ curr; TYPE_2__ goal; TYPE_1__ user; } ;
struct ahd_devinfo {int dummy; } ;


 int AHD_FATAL_ERROR (struct ahd_softc*) ;
 int AHD_NUM_TARGETS ;
 int AHD_RTI ;
 int AHD_SYNCRATE_160 ;
 int AHD_SYNCRATE_DT ;
 int AHD_TRANS_CUR ;
 int AHD_TRANS_GOAL ;
 int CAM_LUN_WILDCARD ;
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
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,char,int,int,struct ahd_tmode_tstate**) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int,int ) ;
 int printf (char*,char*) ;

int
ahd_default_config(struct ahd_softc *ahd)
{
 int targ;

 ahd->our_id = 7;






 if (ahd_alloc_tstate(ahd, ahd->our_id, 'A') == ((void*)0)) {
  printf("%s: unable to allocate ahd_tmode_tstate.  "
         "Failing attach\n", ahd_name(ahd));
  AHD_FATAL_ERROR(ahd);
  return (ENOMEM);
 }

 for (targ = 0; targ < AHD_NUM_TARGETS; targ++) {
  struct ahd_devinfo devinfo;
  struct ahd_initiator_tinfo *tinfo;
  struct ahd_tmode_tstate *tstate;
  uint16_t target_mask;

  tinfo = ahd_fetch_transinfo(ahd, 'A', ahd->our_id,
         targ, &tstate);



  tinfo->user.protocol_version = 4;
  tinfo->user.transport_version = 4;

  target_mask = 0x01 << targ;
  ahd->user_discenable |= target_mask;
  tstate->discenable |= target_mask;
  ahd->user_tagenable |= target_mask;



  tinfo->user.period = AHD_SYNCRATE_160;

  tinfo->user.offset = MAX_OFFSET;
  tinfo->user.ppr_options = MSG_EXT_PPR_RD_STRM
     | MSG_EXT_PPR_WR_FLOW
     | MSG_EXT_PPR_HOLD_MCS
     | MSG_EXT_PPR_IU_REQ
     | MSG_EXT_PPR_QAS_REQ
     | MSG_EXT_PPR_DT_REQ;
  if ((ahd->features & AHD_RTI) != 0)
   tinfo->user.ppr_options |= MSG_EXT_PPR_RTI;

  tinfo->user.width = MSG_EXT_WDTR_BUS_16_BIT;





  tinfo->goal.protocol_version = 2;
  tinfo->goal.transport_version = 2;
  tinfo->curr.protocol_version = 2;
  tinfo->curr.transport_version = 2;
  ahd_compile_devinfo(&devinfo, ahd->our_id,
        targ, CAM_LUN_WILDCARD,
        'A', ROLE_INITIATOR);
  tstate->tagenable &= ~target_mask;
  ahd_set_width(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
         AHD_TRANS_CUR|AHD_TRANS_GOAL, TRUE);
  ahd_set_syncrate(ahd, &devinfo, 0, 0,
                    0, AHD_TRANS_CUR|AHD_TRANS_GOAL,
               TRUE);
 }
 return (0);
}
