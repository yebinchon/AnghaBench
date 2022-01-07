
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {int ifq_mtx; } ;
struct TYPE_19__ {int ifq_mtx; } ;
struct TYPE_21__ {int dmamem; int timeout_handle; TYPE_10__* chan; int devt; TYPE_1__ hi_queue; TYPE_15__ queue; int * node; int ifp; scalar_t__ running; } ;
typedef TYPE_2__ drv_t ;
typedef int device_t ;
struct TYPE_22__ {int num; scalar_t__ sys; } ;
typedef TYPE_3__ cp_chan_t ;
struct TYPE_23__ {size_t num; TYPE_3__* chan; int * sys; } ;
typedef TYPE_4__ cp_board_t ;
struct TYPE_24__ {int cp_mtx; int dmamem; int cp_res; int cp_irq; int cp_intrhand; TYPE_4__* board; } ;
typedef TYPE_5__ bdrv_t ;
struct TYPE_18__ {int type; } ;


 int CP_LOCK (TYPE_5__*) ;
 int CP_UNLOCK (TYPE_5__*) ;
 int EBUSY ;
 int IF_DRAIN (TYPE_15__*) ;
 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int NCHAN ;
 int NG_NODE_UNREF (int *) ;
 int PCIR_BAR (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ** adapter ;
 int bpfdetach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int ** channel ;
 int cp_bus_dma_mem_free (int *) ;
 int cp_destroy ;
 int cp_interrupt_poll (TYPE_4__*,int) ;
 int cp_led_off (TYPE_4__*) ;
 int cp_reset (TYPE_4__*,int ,int ) ;
 int cp_set_dtr (TYPE_10__*,int ) ;
 int cp_set_rts (TYPE_10__*,int ) ;
 int cp_stop_chan (TYPE_3__*) ;
 int cp_stop_e1 (TYPE_3__*) ;
 int destroy_dev (int ) ;
 TYPE_5__* device_get_softc (int ) ;
 int free (TYPE_4__*,int ) ;
 int if_detach (int ) ;
 int if_free (int ) ;
 int * led_timo ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int ng_rmnode_self (int *) ;
 int splimp () ;
 int splx (int) ;
 int sppp_detach (int ) ;

__attribute__((used)) static int cp_detach (device_t dev)
{
 bdrv_t *bd = device_get_softc (dev);
 cp_board_t *b = bd->board;
 cp_chan_t *c;
 int s;

 KASSERT (mtx_initialized (&bd->cp_mtx), ("cp mutex not initialized"));
 s = splimp ();
 CP_LOCK (bd);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (! d || ! d->chan->type)
   continue;
  if (d->running) {
   CP_UNLOCK (bd);
   splx (s);
   return EBUSY;
  }
 }



 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (! d || ! d->chan->type)
   continue;

  cp_stop_chan (c);
  cp_stop_e1 (c);
  cp_set_dtr (d->chan, 0);
  cp_set_rts (d->chan, 0);
 }


 cp_destroy = 1;
 cp_interrupt_poll (b, 1);
 cp_led_off (b);
 cp_reset (b, 0 ,0);
 callout_stop (&led_timo[b->num]);


 bus_teardown_intr (dev, bd->cp_irq, bd->cp_intrhand);

 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (! d || ! d->chan->type)
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

 b->sys = ((void*)0);
 CP_UNLOCK (bd);

 bus_release_resource (dev, SYS_RES_IRQ, 0, bd->cp_irq);
 bus_release_resource (dev, SYS_RES_MEMORY, PCIR_BAR(0), bd->cp_res);

 CP_LOCK (bd);
 cp_led_off (b);
 CP_UNLOCK (bd);
 callout_drain (&led_timo[b->num]);
 splx (s);

 for (c = b->chan; c < b->chan + NCHAN; ++c) {
  drv_t *d = (drv_t*) c->sys;

  if (! d || ! d->chan->type)
   continue;
  callout_drain (&d->timeout_handle);
  channel [b->num*NCHAN + c->num] = ((void*)0);

  cp_bus_dma_mem_free (&d->dmamem);
 }
 adapter [b->num] = ((void*)0);
 cp_bus_dma_mem_free (&bd->dmamem);
 free (b, M_DEVBUF);
 mtx_destroy (&bd->cp_mtx);
 return 0;
}
