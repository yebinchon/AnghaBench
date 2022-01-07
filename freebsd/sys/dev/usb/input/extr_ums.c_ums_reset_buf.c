
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fp; } ;
struct ums_softc {TYPE_1__ sc_fifo; } ;


 size_t USB_FIFO_RX ;
 int usb_fifo_reset (int ) ;

__attribute__((used)) static void
ums_reset_buf(struct ums_softc *sc)
{

 usb_fifo_reset(sc->sc_fifo.fp[USB_FIFO_RX]);
}
