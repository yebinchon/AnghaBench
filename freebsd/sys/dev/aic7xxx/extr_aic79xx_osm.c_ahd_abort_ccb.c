
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccb_hdr {int func_code; void* status; int path; } ;
struct TYPE_3__ {union ccb* abort_ccb; } ;
union ccb {struct ccb_hdr ccb_h; TYPE_1__ cab; } ;
struct ccb_hdr_slist {int dummy; } ;
struct cam_sim {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_tmode_lstate {struct ccb_hdr_slist immed_notifies; struct ccb_hdr_slist accept_tios; } ;
struct ahd_softc {int dummy; } ;
typedef void* cam_status ;
struct TYPE_4__ {int sle; } ;


 void* CAM_PATH_INVALID ;
 void* CAM_REQ_ABORTED ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_UA_ABORT ;
 struct ccb_hdr* SLIST_FIRST (struct ccb_hdr_slist*) ;
 struct ccb_hdr* SLIST_NEXT (struct ccb_hdr*,int ) ;
 int SLIST_REMOVE_HEAD (struct ccb_hdr_slist*,int ) ;
 int TRUE ;




 void* ahd_find_tmode_devs (struct ahd_softc*,struct cam_sim*,union ccb*,struct ahd_tmode_tstate**,struct ahd_tmode_lstate**,int ) ;
 int printf (char*) ;
 TYPE_2__ sim_links ;
 int xpt_done (union ccb*) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void
ahd_abort_ccb(struct ahd_softc *ahd, struct cam_sim *sim, union ccb *ccb)
{
 union ccb *abort_ccb;

 abort_ccb = ccb->cab.abort_ccb;
 switch (abort_ccb->ccb_h.func_code) {
 case 128:

  ccb->ccb_h.status = CAM_UA_ABORT;
  break;
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }
 xpt_done(ccb);
}
