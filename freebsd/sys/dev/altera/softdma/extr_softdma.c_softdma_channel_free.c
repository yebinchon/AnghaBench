
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {scalar_t__ chan; } ;
struct softdma_softc {int dummy; } ;
struct softdma_channel {scalar_t__ used; int * descs; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct softdma_softc* device_get_softc (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
softdma_channel_free(device_t dev, struct xdma_channel *xchan)
{
 struct softdma_channel *chan;
 struct softdma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct softdma_channel *)xchan->chan;

 if (chan->descs != ((void*)0)) {
  free(chan->descs, M_DEVBUF);
 }

 chan->used = 0;

 return (0);
}
