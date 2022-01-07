
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {scalar_t__ chan; } ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {scalar_t__ used; } ;
typedef int device_t ;


 struct pdma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pdma_channel_free(device_t dev, struct xdma_channel *xchan)
{
 struct pdma_channel *chan;
 struct pdma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct pdma_channel *)xchan->chan;
 chan->used = 0;

 return (0);
}
