
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct ccb_hdr {int flags; int status; int target_lun; TYPE_6__* spriv_ptr0; } ;
struct TYPE_19__ {int cdb_bytes; int cdb_ptr; } ;
struct ccb_scsiio {int tag_action; int cdb_len; int dxfer_len; TYPE_3__ cdb_io; } ;
union ccb {struct ccb_hdr ccb_h; struct ccb_scsiio csio; } ;
typedef int u_char ;
struct cam_sim {int dummy; } ;
struct TYPE_20__ {int F; int W; int R; int edtlen; int cdb; int lun; void* attr; int opcode; } ;
typedef TYPE_4__ scsi_req_t ;
struct TYPE_17__ {TYPE_4__ scsi_req; } ;
struct TYPE_18__ {TYPE_1__ ipdu; } ;
struct TYPE_21__ {union ccb* ccb; TYPE_2__ pdu; } ;
typedef TYPE_5__ pduq_t ;
struct TYPE_22__ {TYPE_7__* isc; } ;
typedef TYPE_6__ isc_session_t ;
struct TYPE_23__ {int npdu_alloc; int npdu_max; } ;


 int CAM_CDB_PHYS ;
 int CAM_CDB_POINTER ;
 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;
 int CAM_REQ_INVALID ;
 int ISCSI_SCSI_CMD ;




 int M_NOWAIT ;
 TYPE_6__* cam_sim_softc (struct cam_sim*) ;
 int debug (int,char*,TYPE_6__*) ;
 int debug_called (int) ;
 int dwl (TYPE_6__*,int ,int *) ;
 int htonl (int ) ;
 int hz ;
 void* iSCSI_TASK_ACA ;
 void* iSCSI_TASK_HOFQ ;
 void* iSCSI_TASK_ORDER ;
 void* iSCSI_TASK_SIMPLE ;
 scalar_t__ isc_qout (TYPE_6__*,TYPE_5__*) ;
 int memcpy (int ,int ,int) ;
 int pause (char*,int) ;
 TYPE_5__* pdu_alloc (TYPE_7__*,int ) ;
 int pdu_free (TYPE_7__*,TYPE_5__*) ;
 int sdebug (int,char*,...) ;
 int tsleep (TYPE_7__*,int ,char*,int) ;
 int xdebug (char*,int,long) ;

int
scsi_encap(struct cam_sim *sim, union ccb *ccb)
{
     isc_session_t *sp = cam_sim_softc(sim);
     struct ccb_scsiio *csio = &ccb->csio;
     struct ccb_hdr *ccb_h = &ccb->ccb_h;
     pduq_t *pq;
     scsi_req_t *cmd;

     debug_called(8);

     debug(4, "ccb->sp=%p", ccb_h->spriv_ptr0);
     sp = ccb_h->spriv_ptr0;

     if((pq = pdu_alloc(sp->isc, M_NOWAIT)) == ((void*)0)) {
   debug(2, "ccb->sp=%p", ccb_h->spriv_ptr0);
   sdebug(1, "pdu_alloc failed sc->npdu_max=%d npdu_alloc=%d",
   sp->isc->npdu_max, sp->isc->npdu_alloc);
   while((pq = pdu_alloc(sp->isc, M_NOWAIT)) == ((void*)0)) {
        sdebug(2, "waiting...");



        tsleep(sp->isc, 0, "isc_encap", 5*hz);

   }
     }
     cmd = &pq->pdu.ipdu.scsi_req;
     cmd->opcode = ISCSI_SCSI_CMD;
     cmd->F = 1;
     cmd->attr = iSCSI_TASK_SIMPLE;


     dwl(sp, ccb_h->target_lun, (u_char *)&cmd->lun);

     if((ccb_h->flags & CAM_CDB_POINTER) != 0) {
   if((ccb_h->flags & CAM_CDB_PHYS) == 0) {
        if(csio->cdb_len > 16) {
      sdebug(3, "oversize cdb %d > 16", csio->cdb_len);
      goto invalid;
        }
   }
   else {
        sdebug(3, "not phys");
        goto invalid;
   }
     }

     if(csio->cdb_len > sizeof(cmd->cdb))
   xdebug("guevalt! %d > %ld", csio->cdb_len, (long)sizeof(cmd->cdb));

     memcpy(cmd->cdb,
     ccb_h->flags & CAM_CDB_POINTER? csio->cdb_io.cdb_ptr: csio->cdb_io.cdb_bytes,
     csio->cdb_len);

     cmd->W = (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT;
     cmd->R = (ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN;
     cmd->edtlen = htonl(csio->dxfer_len);

     pq->ccb = ccb;



     if(isc_qout(sp, pq) == 0)
   return 1;
 invalid:
     ccb->ccb_h.status = CAM_REQ_INVALID;
     pdu_free(sp->isc, pq);

     return 0;
}
