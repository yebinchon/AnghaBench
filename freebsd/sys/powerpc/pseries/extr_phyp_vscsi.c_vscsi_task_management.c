
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int func_code; int target_lun; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct vscsi_xfer {int srp_iu_size; TYPE_2__* sc; scalar_t__ srp_iu_offset; union ccb* ccb; } ;
struct vscsi_softc {int active_xferq; int free_xferq; int io_lock; } ;
struct vscsi_crq {int iu_length; int valid; int format; scalar_t__ iu_data; } ;
struct srp_tsk_mgmt {int function; int lun; scalar_t__ tag; int type; } ;
struct TYPE_4__ {int unit; scalar_t__ srp_iu_phys; int crq_map; int crq_tag; scalar_t__ srp_iu_queue; int srp_iu_arena; } ;


 int BUS_DMASYNC_PREWRITE ;
 int CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int H_SEND_CRQ ;
 int MA_OWNED ;
 int M_BESTFIT ;
 int M_NOWAIT ;
 int SRP_TSK_MGMT ;
 struct vscsi_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vscsi_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct vscsi_xfer*,int ) ;

 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (struct srp_tsk_mgmt*,int) ;
 int htobe64 (int ) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,...) ;
 int phyp_hcall (int ,int ,scalar_t__,scalar_t__) ;
 int queue ;
 int vmem_alloc (int ,int,int,scalar_t__*) ;

__attribute__((used)) static void
vscsi_task_management(struct vscsi_softc *sc, union ccb *ccb)
{
 struct srp_tsk_mgmt *cmd;
 struct vscsi_xfer *xp;
 struct vscsi_crq crq;
 int err;

 mtx_assert(&sc->io_lock, MA_OWNED);

 xp = TAILQ_FIRST(&sc->free_xferq);
 if (xp == ((void*)0))
  panic("SCSI queue flooded");
 xp->ccb = ccb;
 TAILQ_REMOVE(&sc->free_xferq, xp, queue);
 TAILQ_INSERT_TAIL(&sc->active_xferq, xp, queue);

 xp->srp_iu_size = crq.iu_length = sizeof(*cmd);
 err = vmem_alloc(xp->sc->srp_iu_arena, xp->srp_iu_size,
     M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
 if (err)
  panic("Error during VMEM allocation (%d)", err);

 cmd = (struct srp_tsk_mgmt *)((uint8_t *)xp->sc->srp_iu_queue +
     (uintptr_t)xp->srp_iu_offset);
 bzero(cmd, xp->srp_iu_size);
 cmd->type = SRP_TSK_MGMT;
 cmd->tag = (uint64_t)xp;
 cmd->lun = htobe64(CAM_EXTLUN_BYTE_SWIZZLE(ccb->ccb_h.target_lun));

 switch (ccb->ccb_h.func_code) {
 case 128:
  cmd->function = 0x08;
  break;
 default:
  panic("Unimplemented code %d", ccb->ccb_h.func_code);
  break;
 }

 bus_dmamap_sync(xp->sc->crq_tag, xp->sc->crq_map, BUS_DMASYNC_PREWRITE);


 crq.valid = 0x80;
 crq.format = 0x01;
 crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;

 err = phyp_hcall(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
     ((uint64_t *)(&crq))[1]);
 if (err != 0)
  panic("CRQ send failure (%d)", err);
}
