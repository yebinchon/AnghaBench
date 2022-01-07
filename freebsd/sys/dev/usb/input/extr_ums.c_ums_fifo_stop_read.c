
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct ums_softc {int dummy; } ;


 int ums_stop_rx (struct ums_softc*) ;
 struct ums_softc* usb_fifo_softc (struct usb_fifo*) ;

__attribute__((used)) static void
ums_fifo_stop_read(struct usb_fifo *fifo)
{
 struct ums_softc *sc = usb_fifo_softc(fifo);

 ums_stop_rx(sc);
}
