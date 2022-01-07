
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {scalar_t__ chan; } ;
struct msgdma_softc {int dummy; } ;
struct msgdma_channel {scalar_t__ used; } ;
typedef int device_t ;


 struct msgdma_softc* device_get_softc (int ) ;
 int msgdma_desc_free (struct msgdma_softc*,struct msgdma_channel*) ;

__attribute__((used)) static int
msgdma_channel_free(device_t dev, struct xdma_channel *xchan)
{
 struct msgdma_channel *chan;
 struct msgdma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct msgdma_channel *)xchan->chan;

 msgdma_desc_free(sc, chan);

 chan->used = 0;

 return (0);
}
