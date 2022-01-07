
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_hdr {int flags; int status; } ;
struct ccb_scsiio {struct ccb_hdr ccb_h; int dxfer_len; } ;
typedef TYPE_1__* hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_9__ {int host_status; int dmamap; int dmamapped; TYPE_1__* arg; int data_len; } ;
struct TYPE_8__ {int sim; int data_dmat; } ;


 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_RELEASE_SIMQ ;
 int EINPROGRESS ;
 int HS_WAIT ;
 int MA_OWNED ;
 int SYM_DMA_READ ;
 int SYM_DMA_WRITE ;
 int SYM_LOCK_ASSERT (int ) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int (*) (TYPE_2__*,int *,int ,int ),TYPE_2__*,int ) ;
 int sym_execute_ccb (TYPE_2__*,int *,int ,int ) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
sym_setup_data_and_start(hcb_p np, struct ccb_scsiio *csio, ccb_p cp)
{
 struct ccb_hdr *ccb_h;
 int dir, retv;

 SYM_LOCK_ASSERT(MA_OWNED);

 ccb_h = &csio->ccb_h;




 cp->data_len = csio->dxfer_len;
 cp->arg = np;




 dir = (ccb_h->flags & CAM_DIR_MASK);
 if (dir == CAM_DIR_NONE) {
  sym_execute_ccb(cp, ((void*)0), 0, 0);
  return;
 }

 cp->dmamapped = (dir == CAM_DIR_IN) ? SYM_DMA_READ : SYM_DMA_WRITE;
 retv = bus_dmamap_load_ccb(np->data_dmat, cp->dmamap,
          (union ccb *)csio, sym_execute_ccb, cp, 0);
 if (retv == EINPROGRESS) {
  cp->host_status = HS_WAIT;
  xpt_freeze_simq(np->sim, 1);
  csio->ccb_h.status |= CAM_RELEASE_SIMQ;
 }
}
