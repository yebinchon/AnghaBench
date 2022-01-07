
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_fifo {int dummy; } ;
struct umidi_chan {int * xfer; } ;


 size_t UMIDI_RX_TRANSFER ;
 struct umidi_chan* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
umidi_start_read(struct usb_fifo *fifo)
{
 struct umidi_chan *chan = usb_fifo_softc(fifo);

 usbd_transfer_start(chan->xfer[UMIDI_RX_TRANSFER]);
}
