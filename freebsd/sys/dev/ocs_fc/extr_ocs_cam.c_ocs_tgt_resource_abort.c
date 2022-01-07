
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* status; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef scalar_t__ uint32_t ;
struct ocs_softc {int dummy; } ;
struct TYPE_6__ {int inot; int atio; } ;
typedef TYPE_2__ ocs_tgt_resource_t ;
typedef int int32_t ;
struct TYPE_7__ {int stqe; } ;


 void* CAM_REQ_ABORTED ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 TYPE_3__ sim_links ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static int32_t
ocs_tgt_resource_abort(struct ocs_softc *ocs, ocs_tgt_resource_t *trsrc)
{
 union ccb *ccb = ((void*)0);
 uint32_t count;

 count = 0;
 do {
  ccb = (union ccb *)STAILQ_FIRST(&trsrc->atio);
  if (ccb) {
   STAILQ_REMOVE_HEAD(&trsrc->atio, sim_links.stqe);
   ccb->ccb_h.status = CAM_REQ_ABORTED;
   xpt_done(ccb);
   count++;
  }
 } while (ccb);

 count = 0;
 do {
  ccb = (union ccb *)STAILQ_FIRST(&trsrc->inot);
  if (ccb) {
   STAILQ_REMOVE_HEAD(&trsrc->inot, sim_links.stqe);
   ccb->ccb_h.status = CAM_REQ_ABORTED;
   xpt_done(ccb);
   count++;
  }
 } while (ccb);

 return 0;
}
