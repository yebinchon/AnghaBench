
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer_queue {int head; } ;
struct usb_xfer {struct usb_xfer_queue* wait_queue; } ;


 int TAILQ_REMOVE (int *,struct usb_xfer*,int ) ;
 int wait_entry ;

void
usbd_transfer_dequeue(struct usb_xfer *xfer)
{
 struct usb_xfer_queue *pq;

 pq = xfer->wait_queue;
 if (pq) {
  TAILQ_REMOVE(&pq->head, xfer, wait_entry);
  xfer->wait_queue = ((void*)0);
 }
}
