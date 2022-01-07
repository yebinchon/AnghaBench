
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct vscsi_xfer {int srp_iu_size; TYPE_1__* sc; scalar_t__ srp_iu_offset; int * ccb; } ;
struct vscsi_softc {int crq_map; int crq_tag; int active_xferq; int free_xferq; int io_lock; } ;
struct vscsi_crq {int iu_length; int valid; int format; scalar_t__ iu_data; } ;
struct srp_login {scalar_t__ flags; int buffer_formats; int max_cmd_length; scalar_t__ tag; int type; } ;
struct TYPE_2__ {int unit; scalar_t__ srp_iu_phys; scalar_t__ srp_iu_queue; int srp_iu_arena; } ;


 int BUS_DMASYNC_PREWRITE ;
 int H_SEND_CRQ ;
 int MA_OWNED ;
 int M_BESTFIT ;
 int M_NOWAIT ;
 int SRP_LOGIN_REQ ;
 struct vscsi_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vscsi_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct vscsi_xfer*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (struct srp_login*,int) ;
 int htobe16 (int) ;
 int htobe64 (int) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,...) ;
 int phyp_hcall (int ,int ,scalar_t__,scalar_t__) ;
 int queue ;
 int vmem_alloc (int ,int,int,scalar_t__*) ;

__attribute__((used)) static void
vscsi_srp_login(struct vscsi_softc *sc)
{
 struct vscsi_xfer *xp;
 struct srp_login *login;
 struct vscsi_crq crq;
 int err;

 mtx_assert(&sc->io_lock, MA_OWNED);

 xp = TAILQ_FIRST(&sc->free_xferq);
 if (xp == ((void*)0))
  panic("SCSI queue flooded");
 xp->ccb = ((void*)0);
 TAILQ_REMOVE(&sc->free_xferq, xp, queue);
 TAILQ_INSERT_TAIL(&sc->active_xferq, xp, queue);


 xp->srp_iu_size = crq.iu_length = 64;
 err = vmem_alloc(xp->sc->srp_iu_arena, xp->srp_iu_size,
     M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
 if (err)
  panic("Error during VMEM allocation (%d)", err);

 login = (struct srp_login *)((uint8_t *)xp->sc->srp_iu_queue +
     (uintptr_t)xp->srp_iu_offset);
 bzero(login, xp->srp_iu_size);
 login->type = SRP_LOGIN_REQ;
 login->tag = (uint64_t)(xp);
 login->max_cmd_length = htobe64(256);
 login->buffer_formats = htobe16(0x1 | 0x2);
 login->flags = 0;


 crq.valid = 0x80;
 crq.format = 0x01;
 crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;
 bus_dmamap_sync(sc->crq_tag, sc->crq_map, BUS_DMASYNC_PREWRITE);

 err = phyp_hcall(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
     ((uint64_t *)(&crq))[1]);
 if (err != 0)
  panic("CRQ send failure (%d)", err);
}
