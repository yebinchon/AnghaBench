
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rsp_cons; scalar_t__ req_prod_pvt; TYPE_1__* sring; } ;
struct xbd_softc {scalar_t__ xbd_state; int xbd_io_lock; int * xbd_cm_q; TYPE_4__ xbd_ring; int xbd_io_dmat; struct xbd_command* xbd_shadow; } ;
struct xbd_command {scalar_t__ cm_operation; int (* cm_complete ) (struct xbd_command*) ;scalar_t__ cm_bp; int cm_status; int cm_map; int cm_sg_refs; int cm_nseg; } ;
struct TYPE_7__ {size_t id; int status; } ;
typedef TYPE_2__ blkif_response_t ;
struct TYPE_6__ {scalar_t__ rsp_prod; scalar_t__ rsp_event; } ;
typedef scalar_t__ RING_IDX ;


 scalar_t__ BLKIF_OP_READ ;
 scalar_t__ BLKIF_OP_WRITE ;
 scalar_t__ BLKIF_OP_WRITE_BARRIER ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int RING_FINAL_CHECK_FOR_RESPONSES (TYPE_4__*,int) ;
 TYPE_2__* RING_GET_RESPONSE (TYPE_4__*,scalar_t__) ;
 int XBDF_WAIT_IDLE ;
 size_t XBD_Q_BUSY ;
 scalar_t__ XBD_STATE_DISCONNECTED ;
 scalar_t__ XBD_STATE_SUSPENDED ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int gnttab_end_foreign_access_references (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rmb () ;
 int stub1 (struct xbd_command*) ;
 int wakeup (int *) ;
 int xbd_bio_complete (struct xbd_softc*,struct xbd_command*) ;
 int xbd_cm_thaw (struct xbd_softc*,struct xbd_command*) ;
 int xbd_free_command (struct xbd_command*) ;
 scalar_t__ xbd_queue_length (struct xbd_softc*,size_t) ;
 int xbd_remove_cm (struct xbd_command*,size_t) ;
 int xbd_startio (struct xbd_softc*) ;
 int xbd_thaw (struct xbd_softc*,int ) ;

__attribute__((used)) static void
xbd_int(void *xsc)
{
 struct xbd_softc *sc = xsc;
 struct xbd_command *cm;
 blkif_response_t *bret;
 RING_IDX i, rp;
 int op;

 mtx_lock(&sc->xbd_io_lock);

 if (__predict_false(sc->xbd_state == XBD_STATE_DISCONNECTED)) {
  mtx_unlock(&sc->xbd_io_lock);
  return;
 }

 again:
 rp = sc->xbd_ring.sring->rsp_prod;
 rmb();

 for (i = sc->xbd_ring.rsp_cons; i != rp;) {
  bret = RING_GET_RESPONSE(&sc->xbd_ring, i);
  cm = &sc->xbd_shadow[bret->id];

  xbd_remove_cm(cm, XBD_Q_BUSY);
  gnttab_end_foreign_access_references(cm->cm_nseg,
      cm->cm_sg_refs);
  i++;

  if (cm->cm_operation == BLKIF_OP_READ)
   op = BUS_DMASYNC_POSTREAD;
  else if (cm->cm_operation == BLKIF_OP_WRITE ||
      cm->cm_operation == BLKIF_OP_WRITE_BARRIER)
   op = BUS_DMASYNC_POSTWRITE;
  else
   op = 0;
  bus_dmamap_sync(sc->xbd_io_dmat, cm->cm_map, op);
  bus_dmamap_unload(sc->xbd_io_dmat, cm->cm_map);





  xbd_cm_thaw(sc, cm);





  cm->cm_status = bret->status;
  if (cm->cm_bp)
   xbd_bio_complete(sc, cm);
  else if (cm->cm_complete != ((void*)0))
   cm->cm_complete(cm);
  else
   xbd_free_command(cm);
 }

 sc->xbd_ring.rsp_cons = i;

 if (i != sc->xbd_ring.req_prod_pvt) {
  int more_to_do;
  RING_FINAL_CHECK_FOR_RESPONSES(&sc->xbd_ring, more_to_do);
  if (more_to_do)
   goto again;
 } else {
  sc->xbd_ring.sring->rsp_event = i + 1;
 }

 if (xbd_queue_length(sc, XBD_Q_BUSY) == 0)
  xbd_thaw(sc, XBDF_WAIT_IDLE);

 xbd_startio(sc);

 if (__predict_false(sc->xbd_state == XBD_STATE_SUSPENDED))
  wakeup(&sc->xbd_cm_q[XBD_Q_BUSY]);

 mtx_unlock(&sc->xbd_io_lock);
}
