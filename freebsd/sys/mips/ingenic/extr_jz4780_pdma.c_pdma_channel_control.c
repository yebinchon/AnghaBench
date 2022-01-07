
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chan; } ;
typedef TYPE_1__ xdma_channel_t ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {int dummy; } ;
typedef int device_t ;





 int chan_start (struct pdma_softc*,struct pdma_channel*) ;
 int chan_stop (struct pdma_softc*,struct pdma_channel*) ;
 struct pdma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pdma_channel_control(device_t dev, xdma_channel_t *xchan, int cmd)
{
 struct pdma_channel *chan;
 struct pdma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct pdma_channel *)xchan->chan;

 switch (cmd) {
 case 130:
  chan_start(sc, chan);
  break;
 case 128:
  chan_stop(sc, chan);
  break;
 case 129:

  return (-1);
 }

 return (0);
}
