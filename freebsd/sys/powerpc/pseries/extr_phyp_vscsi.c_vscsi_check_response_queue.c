
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vscsi_xfer {int srp_iu_size; int srp_iu_offset; } ;
struct vscsi_softc {size_t cur_crq; int bus_initialized; int n_crqs; int unit; int crq_map; int crq_tag; int dev; int free_xferq; int active_xferq; int srp_iu_arena; scalar_t__ srp_iu_queue; struct vscsi_crq* crq_queue; int io_lock; } ;
struct vscsi_crq {scalar_t__ valid; int format; scalar_t__ iu_data; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int H_VIO_SIGNAL ;
 int MA_OWNED ;


 int TAILQ_INSERT_TAIL (int *,struct vscsi_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct vscsi_xfer*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,int) ;
 int phyp_hcall (int ,int ,int) ;
 int queue ;
 int vmem_free (int ,int ,int ) ;
 int vscsi_login_response (struct vscsi_xfer*,struct vscsi_crq*) ;
 int vscsi_srp_response (struct vscsi_xfer*,struct vscsi_crq*) ;

__attribute__((used)) static void
vscsi_check_response_queue(struct vscsi_softc *sc)
{
 struct vscsi_crq *crq;
 struct vscsi_xfer *xp;
 int code;

 mtx_assert(&sc->io_lock, MA_OWNED);

 while (sc->crq_queue[sc->cur_crq].valid != 0) {

  phyp_hcall(H_VIO_SIGNAL, sc->unit, 0);
  bus_dmamap_sync(sc->crq_tag, sc->crq_map, BUS_DMASYNC_POSTREAD);

  crq = &sc->crq_queue[sc->cur_crq];

  switch (crq->valid) {
  case 0xc0:
   if (crq->format == 0x02)
    sc->bus_initialized = 1;
   break;
  case 0x80:

   xp = (struct vscsi_xfer *)crq->iu_data;

   switch (crq->format) {
   case 0x01:
    code = *((uint8_t *)sc->srp_iu_queue +
            (uintptr_t)xp->srp_iu_offset);
    switch (code) {
    case 128:
     vscsi_srp_response(xp, crq);
     break;
    case 129:
     vscsi_login_response(xp, crq);
     break;
    default:
     device_printf(sc->dev, "Unknown SRP "
         "response code %d\n", code);
     break;
    }
    break;
   case 0x02:

    break;
   default:
    panic("Unknown CRQ format %d\n", crq->format);
    break;
   }
   vmem_free(sc->srp_iu_arena, xp->srp_iu_offset,
       xp->srp_iu_size);
   TAILQ_REMOVE(&sc->active_xferq, xp, queue);
   TAILQ_INSERT_TAIL(&sc->free_xferq, xp, queue);
   break;
  default:
   device_printf(sc->dev,
       "Unknown CRQ message type %d\n", crq->valid);
   break;
  }

  crq->valid = 0;
  sc->cur_crq = (sc->cur_crq + 1) % sc->n_crqs;

  bus_dmamap_sync(sc->crq_tag, sc->crq_map, BUS_DMASYNC_PREWRITE);
  phyp_hcall(H_VIO_SIGNAL, sc->unit, 1);
 }
}
