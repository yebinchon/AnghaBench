
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {void* chan; } ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {int used; int index; struct xdma_channel* xchan; } ;
typedef int device_t ;


 int PDMA_NCHANNELS ;
 struct pdma_softc* device_get_softc (int ) ;
 int pdma_channel_setup_descriptors (int ,struct pdma_channel*) ;
 struct pdma_channel* pdma_channels ;

__attribute__((used)) static int
pdma_channel_alloc(device_t dev, struct xdma_channel *xchan)
{
 struct pdma_channel *chan;
 struct pdma_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < PDMA_NCHANNELS; i++) {
  chan = &pdma_channels[i];
  if (chan->used == 0) {
   chan->xchan = xchan;
   xchan->chan = (void *)chan;
   chan->used = 1;
   chan->index = i;

   pdma_channel_setup_descriptors(dev, chan);

   return (0);
  }
 }

 return (-1);
}
