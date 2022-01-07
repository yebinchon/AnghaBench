
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_14__ {int ifq_mtx; } ;
struct TYPE_15__ {int ifq_mtx; } ;
struct TYPE_17__ {int dmamem; int timeout_handle; TYPE_2__* chan; int devt; TYPE_11__ queue; int ifp; TYPE_1__ hi_queue; int * node; scalar_t__ running; } ;
typedef TYPE_3__ drv_t ;
typedef int device_t ;
struct TYPE_18__ {scalar_t__ sys; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_19__ {size_t num; TYPE_4__* chan; } ;
typedef TYPE_5__ ct_board_t ;
struct TYPE_20__ {int ct_mtx; TYPE_5__* board; int base_res; int base_rid; int drq_res; int drq_rid; int irq_res; int irq_rid; int intrhand; } ;
typedef TYPE_6__ bdrv_t ;
struct TYPE_16__ {int type; } ;


 int CT_LOCK (TYPE_6__*) ;
 int CT_UNLOCK (TYPE_6__*) ;
 int EBUSY ;
 int IF_DRAIN (TYPE_11__*) ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int NCHAN ;
 int NG_NODE_UNREF (int *) ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int ** adapter ;
 int bpfdetach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int ct_bus_dma_mem_free (int *) ;
 int ct_close_board (TYPE_5__*) ;
 int ct_led_off (TYPE_5__*) ;
 int destroy_dev (int ) ;
 TYPE_6__* device_get_softc (int ) ;
 int free (TYPE_5__*,int ) ;
 int if_detach (int ) ;
 int if_free (int ) ;
 int * led_timo ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int ng_rmnode_self (int *) ;
 int splimp () ;
 int splx (int) ;
 int sppp_detach (int ) ;

__attribute__((used)) static int ct_detach (device_t dev)
{
 bdrv_t *bd = device_get_softc (dev);
 ct_board_t *b = bd->board;
 ct_chan_t *c;
 int s;

 KASSERT (mtx_initialized (&bd->ct_mtx), ("ct mutex not initialized"));

 s = splimp ();
 CT_LOCK (bd);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || !d->chan->type)
   continue;

  if (d->running) {
   CT_UNLOCK (bd);
   splx (s);
   return EBUSY;
  }
 }


 callout_stop (&led_timo[b->num]);

 CT_UNLOCK (bd);

 bus_teardown_intr (dev, bd->irq_res, bd->intrhand);
 bus_release_resource (dev, SYS_RES_IRQ, bd->irq_rid, bd->irq_res);

 bus_release_resource (dev, SYS_RES_DRQ, bd->drq_rid, bd->drq_res);

 bus_release_resource (dev, SYS_RES_IOPORT, bd->base_rid, bd->base_res);

 CT_LOCK (bd);
 ct_close_board (b);
 CT_UNLOCK (bd);


 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || !d->chan->type)
   continue;

  callout_stop (&d->timeout_handle);
  bpfdetach (d->ifp);


  sppp_detach (d->ifp);

  if_detach (d->ifp);
  if_free (d->ifp);
  IF_DRAIN (&d->queue);
  mtx_destroy (&d->queue.ifq_mtx);

  destroy_dev (d->devt);
 }

 CT_LOCK (bd);
 ct_led_off (b);
 CT_UNLOCK (bd);
 callout_drain (&led_timo[b->num]);
 splx (s);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (!d || !d->chan->type)
   continue;
  callout_drain(&d->timeout_handle);


  ct_bus_dma_mem_free (&d->dmamem);
 }
 bd->board = ((void*)0);
 adapter [b->num] = ((void*)0);
 free (b, M_DEVBUF);

 mtx_destroy (&bd->ct_mtx);

 return 0;
}
