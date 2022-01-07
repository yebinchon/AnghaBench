
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer_queue {int head; } ;
struct usb_xfer {struct usb_xfer_queue* wait_queue; } ;


 int TAILQ_INSERT_TAIL (int *,struct usb_xfer*,int ) ;
 int wait_entry ;

void
usbd_transfer_enqueue(struct usb_xfer_queue *pq, struct usb_xfer *xfer)
{




 if (xfer->wait_queue == ((void*)0)) {
  xfer->wait_queue = pq;
  TAILQ_INSERT_TAIL(&pq->head, xfer, wait_entry);
 }
}
