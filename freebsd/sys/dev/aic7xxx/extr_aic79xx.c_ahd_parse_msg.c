
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ahd_tmode_tstate {struct ahd_tmode_lstate** enabled_luns; } ;
struct ahd_tmode_lstate {int dummy; } ;
struct ahd_softc {int* msgin_buf; int msgin_index; int msgout_len; int* msgout_buf; scalar_t__ msgout_index; int msg_flags; struct ahd_tmode_tstate** enabled_targets; } ;
struct TYPE_2__ {int width; } ;
struct ahd_initiator_tinfo {TYPE_1__ curr; } ;
struct ahd_devinfo {int channel; size_t our_scsiid; int target; int lun; int role; } ;


 int AHDMSG_EXT ;
 int AHD_NEG_ALWAYS ;
 int AHD_SHOW_MESSAGES ;
 int AHD_TRANS_ACTIVE ;
 int AHD_TRANS_GOAL ;
 int CAM_BDR_SENT ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQ_ABORTED ;
 int FALSE ;
 int INITIATOR_TAG ;
 int MSGLOOP_IN_PROG ;
 int MSGLOOP_MSGCOMPLETE ;
 int MSGLOOP_TERMINATED ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_LEN ;
 int MSG_EXT_PPR_QAS_REQ ;

 int MSG_EXT_SDTR_LEN ;

 int MSG_EXT_WDTR_LEN ;
 int MSG_FLAG_EXPECT_QASREJ_BUSFREE ;







 int ROLE_INITIATOR ;
 int ROLE_TARGET ;
 int SCB_LIST_NULL ;
 int SCSISIGI ;
 int TRUE ;
 int ahd_abort_scbs (struct ahd_softc*,int,int,int,int,int ,int ) ;
 int ahd_build_transfer_msg (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_construct_ppr (struct ahd_softc*,struct ahd_devinfo*,int,int,int,int) ;
 int ahd_construct_sdtr (struct ahd_softc*,struct ahd_devinfo*,int,int) ;
 int ahd_construct_wdtr (struct ahd_softc*,struct ahd_devinfo*,int) ;
 int ahd_debug ;
 int ahd_devlimited_syncrate (struct ahd_softc*,struct ahd_initiator_tinfo*,int*,int*,int ) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int,size_t,int,struct ahd_tmode_tstate**) ;
 int ahd_handle_devreset (struct ahd_softc*,struct ahd_devinfo*,int ,int ,char*,int ) ;
 int ahd_handle_msg_reject (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_queue_lstate_event (struct ahd_softc*,struct ahd_tmode_lstate*,size_t,int const,int) ;
 int ahd_restart (struct ahd_softc*) ;
 int ahd_send_lstate_events (struct ahd_softc*,struct ahd_tmode_lstate*) ;
 int ahd_sent_msg (struct ahd_softc*,int ,int const,int) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int,int,int,int,int) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int,int,int) ;
 int ahd_update_neg_request (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int ) ;
 int ahd_validate_offset (struct ahd_softc*,struct ahd_initiator_tinfo*,int,int*,int,int ) ;
 int ahd_validate_width (struct ahd_softc*,struct ahd_initiator_tinfo*,int*,int ) ;
 int bootverbose ;
 int printf (char*,char*,int,...) ;

__attribute__((used)) static int
ahd_parse_msg(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
 struct ahd_initiator_tinfo *tinfo;
 struct ahd_tmode_tstate *tstate;
 int reject;
 int done;
 int response;

 done = MSGLOOP_IN_PROG;
 response = FALSE;
 reject = FALSE;
 tinfo = ahd_fetch_transinfo(ahd, devinfo->channel, devinfo->our_scsiid,
        devinfo->target, &tstate);
 switch (ahd->msgin_buf[0]) {
 case 139:
 case 129:
 case 140:
 case 130:
 case 134:




  done = MSGLOOP_TERMINATED;
  break;
 case 133:
  response = ahd_handle_msg_reject(ahd, devinfo);

 case 132:
  done = MSGLOOP_MSGCOMPLETE;
  break;
 case 138:
 {

  if (ahd->msgin_index < 2)
   break;
  switch (ahd->msgin_buf[2]) {
  case 136:
  {
   u_int period;
   u_int ppr_options;
   u_int offset;
   u_int saved_offset;

   if (ahd->msgin_buf[1] != MSG_EXT_SDTR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahd->msgin_index < (MSG_EXT_SDTR_LEN + 1))
    break;

   period = ahd->msgin_buf[3];
   ppr_options = 0;
   saved_offset = offset = ahd->msgin_buf[4];
   ahd_devlimited_syncrate(ahd, tinfo, &period,
      &ppr_options, devinfo->role);
   ahd_validate_offset(ahd, tinfo, period, &offset,
         tinfo->curr.width, devinfo->role);
   if (bootverbose) {
    printf("(%s:%c:%d:%d): Received "
           "SDTR period %x, offset %x\n\t"
           "Filtered to period %x, offset %x\n",
           ahd_name(ahd), devinfo->channel,
           devinfo->target, devinfo->lun,
           ahd->msgin_buf[3], saved_offset,
           period, offset);
   }
   ahd_set_syncrate(ahd, devinfo, period,
      offset, ppr_options,
      AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
                TRUE);






   if (ahd_sent_msg(ahd, AHDMSG_EXT, 136, TRUE)) {

    if (saved_offset != offset) {

     reject = TRUE;
    }
   } else {



    if (bootverbose
     && devinfo->role == ROLE_INITIATOR) {
     printf("(%s:%c:%d:%d): Target "
            "Initiated SDTR\n",
            ahd_name(ahd), devinfo->channel,
            devinfo->target, devinfo->lun);
    }
    ahd->msgout_index = 0;
    ahd->msgout_len = 0;
    ahd_construct_sdtr(ahd, devinfo,
         period, offset);
    ahd->msgout_index = 0;
    response = TRUE;
   }
   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  case 135:
  {
   u_int bus_width;
   u_int saved_width;
   u_int sending_reply;

   sending_reply = FALSE;
   if (ahd->msgin_buf[1] != MSG_EXT_WDTR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahd->msgin_index < (MSG_EXT_WDTR_LEN + 1))
    break;

   bus_width = ahd->msgin_buf[3];
   saved_width = bus_width;
   ahd_validate_width(ahd, tinfo, &bus_width,
        devinfo->role);
   if (bootverbose) {
    printf("(%s:%c:%d:%d): Received WDTR "
           "%x filtered to %x\n",
           ahd_name(ahd), devinfo->channel,
           devinfo->target, devinfo->lun,
           saved_width, bus_width);
   }

   if (ahd_sent_msg(ahd, AHDMSG_EXT, 135, TRUE)) {






    if (saved_width > bus_width) {
     reject = TRUE;
     printf("(%s:%c:%d:%d): requested %dBit "
            "transfers.  Rejecting...\n",
            ahd_name(ahd), devinfo->channel,
            devinfo->target, devinfo->lun,
            8 * (0x01 << bus_width));
     bus_width = 0;
    }
   } else {



    if (bootverbose
     && devinfo->role == ROLE_INITIATOR) {
     printf("(%s:%c:%d:%d): Target "
            "Initiated WDTR\n",
            ahd_name(ahd), devinfo->channel,
            devinfo->target, devinfo->lun);
    }
    ahd->msgout_index = 0;
    ahd->msgout_len = 0;
    ahd_construct_wdtr(ahd, devinfo, bus_width);
    ahd->msgout_index = 0;
    response = TRUE;
    sending_reply = TRUE;
   }
   ahd_update_neg_request(ahd, devinfo, tstate,
            tinfo, AHD_NEG_ALWAYS);
   ahd_set_width(ahd, devinfo, bus_width,
          AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
                    TRUE);
   if (sending_reply == FALSE && reject == FALSE) {




    ahd->msgout_index = 0;
    ahd->msgout_len = 0;
    ahd_build_transfer_msg(ahd, devinfo);
    ahd->msgout_index = 0;
    response = TRUE;
   }
   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  case 137:
  {
   u_int period;
   u_int offset;
   u_int bus_width;
   u_int ppr_options;
   u_int saved_width;
   u_int saved_offset;
   u_int saved_ppr_options;

   if (ahd->msgin_buf[1] != MSG_EXT_PPR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahd->msgin_index < (MSG_EXT_PPR_LEN + 1))
    break;

   period = ahd->msgin_buf[3];
   offset = ahd->msgin_buf[5];
   bus_width = ahd->msgin_buf[6];
   saved_width = bus_width;
   ppr_options = ahd->msgin_buf[7];





   if ((ppr_options & MSG_EXT_PPR_DT_REQ) == 0
    && period <= 9)
    offset = 0;
   saved_ppr_options = ppr_options;
   saved_offset = offset;





   if (bus_width == 0)
    ppr_options &= MSG_EXT_PPR_QAS_REQ;

   ahd_validate_width(ahd, tinfo, &bus_width,
        devinfo->role);
   ahd_devlimited_syncrate(ahd, tinfo, &period,
      &ppr_options, devinfo->role);
   ahd_validate_offset(ahd, tinfo, period, &offset,
         bus_width, devinfo->role);

   if (ahd_sent_msg(ahd, AHDMSG_EXT, 137, TRUE)) {





    if (saved_width > bus_width
     || saved_offset != offset
     || saved_ppr_options != ppr_options) {
     reject = TRUE;
     period = 0;
     offset = 0;
     bus_width = 0;
     ppr_options = 0;
    }
   } else {
    if (devinfo->role != ROLE_TARGET)
     printf("(%s:%c:%d:%d): Target "
            "Initiated PPR\n",
            ahd_name(ahd), devinfo->channel,
            devinfo->target, devinfo->lun);
    else
     printf("(%s:%c:%d:%d): Initiator "
            "Initiated PPR\n",
            ahd_name(ahd), devinfo->channel,
            devinfo->target, devinfo->lun);
    ahd->msgout_index = 0;
    ahd->msgout_len = 0;
    ahd_construct_ppr(ahd, devinfo, period, offset,
        bus_width, ppr_options);
    ahd->msgout_index = 0;
    response = TRUE;
   }
   if (bootverbose) {
    printf("(%s:%c:%d:%d): Received PPR width %x, "
           "period %x, offset %x,options %x\n"
           "\tFiltered to width %x, period %x, "
           "offset %x, options %x\n",
           ahd_name(ahd), devinfo->channel,
           devinfo->target, devinfo->lun,
           saved_width, ahd->msgin_buf[3],
           saved_offset, saved_ppr_options,
           bus_width, period, offset, ppr_options);
   }
   ahd_set_width(ahd, devinfo, bus_width,
          AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
                    TRUE);
   ahd_set_syncrate(ahd, devinfo, period,
      offset, ppr_options,
      AHD_TRANS_ACTIVE|AHD_TRANS_GOAL,
                TRUE);

   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  default:

   reject = TRUE;
   break;
  }
  break;
 }
 case 131:





  ahd->msg_flags |= MSG_FLAG_EXPECT_QASREJ_BUSFREE;

 case 128:
 default:
  reject = TRUE;
  break;
 }

 if (reject) {



  ahd->msgout_index = 0;
  ahd->msgout_len = 1;
  ahd->msgout_buf[0] = 133;
  done = MSGLOOP_MSGCOMPLETE;
  response = TRUE;
 }

 if (done != MSGLOOP_IN_PROG && !response)

  ahd->msgout_len = 0;

 return (done);
}
