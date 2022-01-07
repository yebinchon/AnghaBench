
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {scalar_t__ chan; } ;
struct axidma_softc {int dummy; } ;
struct axidma_channel {int used; } ;
typedef int device_t ;


 int axidma_desc_free (struct axidma_softc*,struct axidma_channel*) ;
 struct axidma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axidma_channel_free(device_t dev, struct xdma_channel *xchan)
{
 struct axidma_channel *chan;
 struct axidma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct axidma_channel *)xchan->chan;

 axidma_desc_free(sc, chan);

 chan->used = 0;

 return (0);
}
