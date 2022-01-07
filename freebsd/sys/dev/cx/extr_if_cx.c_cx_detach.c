
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


struct TYPE_16__ {int ifq_mtx; } ;
struct TYPE_18__ {int ifq_mtx; } ;
struct TYPE_17__ {int ifq_mtx; } ;
struct TYPE_20__ {int open_dev; int dmamem; TYPE_3__* chan; int timeout_handle; int dcd_timeout_handle; int devt; TYPE_13__ queue; int ifp; TYPE_2__ hi_queue; TYPE_1__ lo_queue; int * node; TYPE_8__* tty; scalar_t__ running; scalar_t__ lock; } ;
typedef TYPE_4__ drv_t ;
typedef int device_t ;
struct TYPE_21__ {scalar_t__ mode; TYPE_4__* sys; } ;
typedef TYPE_5__ cx_chan_t ;
struct TYPE_22__ {size_t num; TYPE_5__* chan; } ;
typedef TYPE_6__ cx_board_t ;
struct TYPE_23__ {int cx_mtx; TYPE_6__* board; int base_res; int base_rid; int drq_res; int drq_rid; int irq_res; int irq_rid; int intrhand; } ;
typedef TYPE_7__ bdrv_t ;
struct TYPE_24__ {int t_state; } ;
struct TYPE_19__ {scalar_t__ type; } ;


 int CX_LOCK (TYPE_7__*) ;
 int CX_UNLOCK (TYPE_7__*) ;
 int EBUSY ;
 int IF_DRAIN (TYPE_13__*) ;
 int KASSERT (int ,char*) ;
 scalar_t__ M_ASYNC ;
 int M_DEVBUF ;
 int NCHAN ;
 int NG_NODE_UNREF (int *) ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TS_ISOPEN ;
 scalar_t__ T_NONE ;
 int ** adapter ;
 int bpfdetach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int cx_bus_dma_mem_free (int *) ;
 int cx_close_board (TYPE_6__*) ;
 int cx_led_off (TYPE_6__*) ;
 int destroy_dev (int ) ;
 TYPE_7__* device_get_softc (int ) ;
 int free (TYPE_6__*,int ) ;
 int if_detach (int ) ;
 int if_free (int ) ;
 int * led_timo ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int ng_rmnode_self (int *) ;
 int splhigh () ;
 int splx (int) ;
 int sppp_detach (int ) ;
 int ttyfree (TYPE_8__*) ;

__attribute__((used)) static int cx_detach (device_t dev)
{
 bdrv_t *bd = device_get_softc (dev);
 cx_board_t *b = bd->board;
 cx_chan_t *c;
 int s;

 KASSERT (mtx_initialized (&bd->cx_mtx), ("cx mutex not initialized"));

 s = splhigh ();
 CX_LOCK (bd);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || d->chan->type == T_NONE)
   continue;
  if (d->lock) {
   CX_UNLOCK (bd);
   splx (s);
   return EBUSY;
  }
  if (c->mode == M_ASYNC && d->tty && (d->tty->t_state & TS_ISOPEN) &&
      (d->open_dev|0x2)) {
   CX_UNLOCK (bd);
   splx (s);
   return EBUSY;
  }
  if (d->running) {
   CX_UNLOCK (bd);
   splx (s);
   return EBUSY;
  }
 }


 callout_stop (&led_timo[b->num]);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = c->sys;

  if (!d || d->chan->type == T_NONE)
   continue;

  callout_stop (&d->dcd_timeout_handle);
 }
 CX_UNLOCK (bd);
 bus_teardown_intr (dev, bd->irq_res, bd->intrhand);
 bus_release_resource (dev, SYS_RES_IRQ, bd->irq_rid, bd->irq_res);

 bus_release_resource (dev, SYS_RES_DRQ, bd->drq_rid, bd->drq_res);

 bus_release_resource (dev, SYS_RES_IOPORT, bd->base_rid, bd->base_res);

 CX_LOCK (bd);
 cx_close_board (b);


 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || d->chan->type == T_NONE)
   continue;

  if (d->tty) {
   ttyfree (d->tty);
   d->tty = ((void*)0);
  }

  callout_stop (&d->timeout_handle);
  bpfdetach (d->ifp);

  sppp_detach (d->ifp);

  if_detach (d->ifp);
  if_free(d->ifp);

  IF_DRAIN (&d->queue);
  mtx_destroy (&d->queue.ifq_mtx);

  destroy_dev (d->devt);
 }

 cx_led_off (b);
 CX_UNLOCK (bd);
 callout_drain (&led_timo[b->num]);
 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = c->sys;

  if (!d || d->chan->type == T_NONE)
   continue;

  callout_drain (&d->dcd_timeout_handle);
  callout_drain (&d->timeout_handle);
 }
 splx (s);

 s = splhigh ();
 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || d->chan->type == T_NONE)
   continue;


  cx_bus_dma_mem_free (&d->dmamem);
 }
 bd->board = ((void*)0);
 adapter [b->num] = ((void*)0);
 free (b, M_DEVBUF);
 splx (s);

 mtx_destroy (&bd->cx_mtx);

 return 0;
}
