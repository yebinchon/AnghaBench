
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct axidma_fdt_data* data; } ;
typedef TYPE_1__ xdma_controller_t ;
struct xdma_channel {int caps; void* chan; TYPE_1__* xdma; } ;
struct axidma_softc {struct axidma_channel* channels; int dev; } ;
struct axidma_fdt_data {size_t id; } ;
struct axidma_channel {int used; int descs_num; scalar_t__ descs_used_count; scalar_t__ idx_tail; scalar_t__ idx_head; struct axidma_softc* sc; struct xdma_channel* xchan; } ;
typedef int device_t ;


 int AXIDMA_DESCS_NUM ;
 int XCHAN_CAP_BOUNCE ;
 int XCHAN_CAP_BUSDMA ;
 scalar_t__ axidma_reset (struct axidma_softc*,size_t) ;
 struct axidma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
axidma_channel_alloc(device_t dev, struct xdma_channel *xchan)
{
 xdma_controller_t *xdma;
 struct axidma_fdt_data *data;
 struct axidma_channel *chan;
 struct axidma_softc *sc;

 sc = device_get_softc(dev);

 if (xchan->caps & XCHAN_CAP_BUSDMA) {
  device_printf(sc->dev,
      "Error: busdma operation is not implemented.");
  return (-1);
 }

 xdma = xchan->xdma;
 data = xdma->data;

 chan = &sc->channels[data->id];
 if (chan->used == 0) {
  if (axidma_reset(sc, data->id) != 0)
   return (-1);
  chan->xchan = xchan;
  xchan->caps |= XCHAN_CAP_BOUNCE;
  xchan->chan = (void *)chan;
  chan->sc = sc;
  chan->used = 1;
  chan->idx_head = 0;
  chan->idx_tail = 0;
  chan->descs_used_count = 0;
  chan->descs_num = AXIDMA_DESCS_NUM;

  return (0);
 }

 return (-1);
}
