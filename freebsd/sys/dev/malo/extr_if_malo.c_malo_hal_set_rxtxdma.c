
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * wcbbase; int rxdesc_read; } ;
struct TYPE_3__ {int * wcbbase; int rxdesc_write; int rxdesc_read; } ;
struct malo_softc {TYPE_2__ malo_hwdma; TYPE_1__ malo_hwspecs; } ;


 int MALO_NUM_TX_QUEUES ;
 int malo_bar0_write4 (struct malo_softc*,int ,int ) ;

__attribute__((used)) static void
malo_hal_set_rxtxdma(struct malo_softc *sc)
{
 int i;

 malo_bar0_write4(sc, sc->malo_hwspecs.rxdesc_read,
     sc->malo_hwdma.rxdesc_read);
 malo_bar0_write4(sc, sc->malo_hwspecs.rxdesc_write,
     sc->malo_hwdma.rxdesc_read);

 for (i = 0; i < MALO_NUM_TX_QUEUES; i++) {
  malo_bar0_write4(sc,
      sc->malo_hwspecs.wcbbase[i], sc->malo_hwdma.wcbbase[i]);
 }
}
