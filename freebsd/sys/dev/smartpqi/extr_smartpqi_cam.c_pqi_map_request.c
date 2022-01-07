
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_9__ {int cm_flags; int status; int bcount; int dvp; int cm_datamap; union ccb* cm_ccb; TYPE_3__* softs; } ;
typedef TYPE_2__ rcb_t ;
struct TYPE_8__ {int pqi_buffer_dmat; } ;
struct TYPE_10__ {TYPE_1__ os_specific; } ;
typedef TYPE_3__ pqisrc_softstate_t ;


 int DBG_ERR_BTL (int ,char*,int,int ) ;
 int DBG_FUNC (char*,...) ;
 int PQI_CMD_MAPPED ;
 int PQI_STATUS_SUCCESS ;
 int REQUEST_PENDING ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,TYPE_2__*,int ) ;
 int pqi_request_map_helper ;
 int pqisrc_build_send_io (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int pqi_map_request( rcb_t *rcb )
{
 pqisrc_softstate_t *softs = rcb->softs;
 int error = PQI_STATUS_SUCCESS;
 union ccb *ccb = rcb->cm_ccb;

 DBG_FUNC("IN\n");


 if (rcb->cm_flags & PQI_CMD_MAPPED)
  return(0);
 rcb->cm_flags |= PQI_CMD_MAPPED;

 if (rcb->bcount) {
  error = bus_dmamap_load_ccb(softs->os_specific.pqi_buffer_dmat,
   rcb->cm_datamap, ccb, pqi_request_map_helper, rcb, 0);
  if (error != 0){
   DBG_ERR_BTL(rcb->dvp, "bus_dmamap_load_ccb failed = %d count = %d\n",
     error, rcb->bcount);
   return error;
  }
 } else {






  rcb->status = REQUEST_PENDING;

  error = pqisrc_build_send_io(softs, rcb);

 }

 DBG_FUNC("OUT error = %d\n", error);

 return error;
}
