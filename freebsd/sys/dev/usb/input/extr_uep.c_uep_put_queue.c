
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int * fp; } ;
struct uep_softc {TYPE_1__ fifo; } ;


 int UEP_PACKET_LEN_REPORT ;
 size_t USB_FIFO_RX ;
 int usb_fifo_put_data_linear (int ,int *,int ,int) ;

__attribute__((used)) static void
uep_put_queue(struct uep_softc *sc, u_char *buf)
{
 usb_fifo_put_data_linear(sc->fifo.fp[USB_FIFO_RX], buf,
     UEP_PACKET_LEN_REPORT, 1);
}
