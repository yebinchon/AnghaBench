
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {scalar_t__ chan; } ;
struct pl330_softc {int dummy; } ;
struct pl330_channel {scalar_t__ used; } ;
typedef int device_t ;


 struct pl330_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pl330_channel_free(device_t dev, struct xdma_channel *xchan)
{
 struct pl330_channel *chan;
 struct pl330_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct pl330_channel *)xchan->chan;
 chan->used = 0;

 return (0);
}
