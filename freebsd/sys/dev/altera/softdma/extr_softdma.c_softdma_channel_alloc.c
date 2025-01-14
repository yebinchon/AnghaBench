
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {int caps; void* chan; } ;
struct softdma_softc {struct softdma_channel* channels; } ;
struct softdma_channel {int used; int index; int descs_num; struct softdma_softc* sc; scalar_t__ descs_used_count; scalar_t__ idx_tail; scalar_t__ idx_head; struct xdma_channel* xchan; } ;
typedef int device_t ;


 int SOFTDMA_NCHANNELS ;
 int XCHAN_CAP_NOSEG ;
 struct softdma_softc* device_get_softc (int ) ;
 scalar_t__ softdma_proc_create (struct softdma_channel*) ;

__attribute__((used)) static int
softdma_channel_alloc(device_t dev, struct xdma_channel *xchan)
{
 struct softdma_channel *chan;
 struct softdma_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < SOFTDMA_NCHANNELS; i++) {
  chan = &sc->channels[i];
  if (chan->used == 0) {
   chan->xchan = xchan;
   xchan->chan = (void *)chan;
   xchan->caps |= XCHAN_CAP_NOSEG;
   chan->index = i;
   chan->idx_head = 0;
   chan->idx_tail = 0;
   chan->descs_used_count = 0;
   chan->descs_num = 1024;
   chan->sc = sc;

   if (softdma_proc_create(chan) != 0) {
    return (-1);
   }

   chan->used = 1;

   return (0);
  }
 }

 return (-1);
}
