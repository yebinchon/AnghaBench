
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_8__ {int status; } ;
struct ccb_scsiio {TYPE_2__ ccb_h; } ;
struct TYPE_9__ {int softs; int status; TYPE_1__* cm_ccb; } ;
typedef TYPE_3__ rcb_t ;
struct TYPE_7__ {int csio; } ;


 int CAM_REQ_CMP ;
 int DBG_IO (char*,...) ;
 int REQUEST_SUCCESS ;
 int panic (char*) ;
 int pqi_release_camq (TYPE_3__*) ;
 int pqi_unmap_request (TYPE_3__*) ;
 int smartpqi_fix_ld_inquiry (int ,struct ccb_scsiio*) ;
 int xpt_done (union ccb*) ;

void
os_io_response_success(rcb_t *rcb)
{
 struct ccb_scsiio *csio;

 DBG_IO("IN rcb = %p\n", rcb);

 if (rcb == ((void*)0))
  panic("rcb is null");

 csio = (struct ccb_scsiio *)&rcb->cm_ccb->csio;

 if (csio == ((void*)0))
  panic("csio is null");

 rcb->status = REQUEST_SUCCESS;
 csio->ccb_h.status = CAM_REQ_CMP;

 smartpqi_fix_ld_inquiry(rcb->softs, csio);
 pqi_release_camq(rcb);
 pqi_unmap_request(rcb);
 xpt_done((union ccb *)csio);

 DBG_IO("OUT\n");
}
