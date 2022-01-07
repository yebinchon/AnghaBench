
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_releasenum; int regioncode; int hwversion; } ;
struct malo_softc {int malo_dev; TYPE_1__ malo_hwspecs; } ;


 scalar_t__ MALO_RXBUF ;
 scalar_t__ MALO_TXBUF ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,scalar_t__,...) ;
 scalar_t__ malo_rxbuf ;
 scalar_t__ malo_txbuf ;

__attribute__((used)) static void
malo_announce(struct malo_softc *sc)
{

 device_printf(sc->malo_dev,
  "versions [hw %d fw %d.%d.%d.%d] (regioncode %d)\n",
  sc->malo_hwspecs.hwversion,
  (sc->malo_hwspecs.fw_releasenum >> 24) & 0xff,
  (sc->malo_hwspecs.fw_releasenum >> 16) & 0xff,
  (sc->malo_hwspecs.fw_releasenum >> 8) & 0xff,
  (sc->malo_hwspecs.fw_releasenum >> 0) & 0xff,
  sc->malo_hwspecs.regioncode);

 if (bootverbose || malo_rxbuf != MALO_RXBUF)
  device_printf(sc->malo_dev,
      "using %u rx buffers\n", malo_rxbuf);
 if (bootverbose || malo_txbuf != MALO_TXBUF)
  device_printf(sc->malo_dev,
      "using %u tx buffers\n", malo_txbuf);
}
