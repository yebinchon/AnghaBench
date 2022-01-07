
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chan; } ;
typedef TYPE_1__ xdma_channel_t ;
struct msgdma_softc {int dummy; } ;
struct msgdma_channel {int dummy; } ;
typedef int device_t ;





 struct msgdma_softc* device_get_softc (int ) ;

__attribute__((used)) static int
msgdma_channel_control(device_t dev, xdma_channel_t *xchan, int cmd)
{
 struct msgdma_channel *chan;
 struct msgdma_softc *sc;

 sc = device_get_softc(dev);

 chan = (struct msgdma_channel *)xchan->chan;

 switch (cmd) {
 case 130:
 case 128:
 case 129:

  return (-1);
 }

 return (0);
}
