
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_fifo {int dummy; } ;
struct umidi_chan {int ** xfer; } ;


 size_t UMIDI_TX_TRANSFER ;
 int usb_fifo_get_data_linear (struct usb_fifo*,int *,int,int*,int ) ;
 struct umidi_chan* usb_fifo_softc (struct usb_fifo*) ;
 int usbd_transfer_start (int *) ;

__attribute__((used)) static void
umidi_start_write(struct usb_fifo *fifo)
{
 struct umidi_chan *chan = usb_fifo_softc(fifo);

 if (chan->xfer[UMIDI_TX_TRANSFER] == ((void*)0)) {
  uint8_t buf[1];
  int actlen;
  do {

   usb_fifo_get_data_linear(fifo, buf, 1, &actlen, 0);
  } while (actlen > 0);
 } else {
  usbd_transfer_start(chan->xfer[UMIDI_TX_TRANSFER]);
 }
}
