
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {int caps; void* chan; } ;
struct pl330_softc {struct pl330_channel* channels; } ;
struct pl330_channel {int used; int index; void* ibuf; int ibuf_phys; struct pl330_softc* sc; struct xdma_channel* xchan; } ;
typedef int device_t ;


 int M_ZERO ;
 int PAGE_SIZE ;
 int PL330_NCHANNELS ;
 int VM_MEMATTR_UNCACHEABLE ;
 int XCHAN_CAP_BUSDMA ;
 struct pl330_softc* device_get_softc (int ) ;
 scalar_t__ kmem_alloc_contig (int,int ,int ,int ,int,int ,int ) ;
 int vtophys (void*) ;

__attribute__((used)) static int
pl330_channel_alloc(device_t dev, struct xdma_channel *xchan)
{
 struct pl330_channel *chan;
 struct pl330_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < PL330_NCHANNELS; i++) {
  chan = &sc->channels[i];
  if (chan->used == 0) {
   chan->xchan = xchan;
   xchan->chan = (void *)chan;
   xchan->caps |= XCHAN_CAP_BUSDMA;
   chan->index = i;
   chan->sc = sc;
   chan->used = 1;

   chan->ibuf = (void *)kmem_alloc_contig(PAGE_SIZE * 8,
       M_ZERO, 0, ~0, PAGE_SIZE, 0,
       VM_MEMATTR_UNCACHEABLE);
   chan->ibuf_phys = vtophys(chan->ibuf);

   return (0);
  }
 }

 return (-1);
}
