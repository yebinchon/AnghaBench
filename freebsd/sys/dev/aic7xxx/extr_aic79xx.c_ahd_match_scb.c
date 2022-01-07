
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct scb {TYPE_3__* io_ctx; } ;
struct ahd_softc {int dummy; } ;
typedef scalar_t__ role_t ;
struct TYPE_5__ {scalar_t__ tag_id; } ;
struct TYPE_4__ {int func_code; } ;
struct TYPE_6__ {TYPE_2__ csio; TYPE_1__ ccb_h; } ;


 char ALL_CHANNELS ;
 int CAM_LUN_WILDCARD ;
 int CAM_TARGET_WILDCARD ;
 scalar_t__ ROLE_INITIATOR ;
 scalar_t__ ROLE_TARGET ;
 char SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 scalar_t__ SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 scalar_t__ SCB_LIST_NULL ;
 int XPT_FC_GROUP (int ) ;
 int XPT_FC_GROUP_TMODE ;

int
ahd_match_scb(struct ahd_softc *ahd, struct scb *scb, int target,
       char channel, int lun, u_int tag, role_t role)
{
 int targ = SCB_GET_TARGET(ahd, scb);
 char chan = SCB_GET_CHANNEL(ahd, scb);
 int slun = SCB_GET_LUN(scb);
 int match;

 match = ((chan == channel) || (channel == ALL_CHANNELS));
 if (match != 0)
  match = ((targ == target) || (target == CAM_TARGET_WILDCARD));
 if (match != 0)
  match = ((lun == slun) || (lun == CAM_LUN_WILDCARD));
 if (match != 0) {
  match = ((tag == SCB_GET_TAG(scb)) || (tag == SCB_LIST_NULL));

 }

 return match;
}
