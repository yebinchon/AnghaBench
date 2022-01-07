
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xfer_queue {int recurse_1; int recurse_3; int recurse_2; struct usb_xfer* curr; int (* command ) (struct usb_xfer_queue*) ;int head; } ;
struct usb_xfer {int * wait_queue; } ;


 int DPRINTFN (int,char*,struct usb_xfer*) ;
 struct usb_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct usb_xfer*,int ) ;
 int stub1 (struct usb_xfer_queue*) ;
 int usbd_transfer_enqueue (struct usb_xfer_queue*,struct usb_xfer*) ;
 int wait_entry ;

void
usb_command_wrapper(struct usb_xfer_queue *pq, struct usb_xfer *xfer)
{
 if (xfer) {




  if (pq->curr != xfer) {
   usbd_transfer_enqueue(pq, xfer);
   if (pq->curr != ((void*)0)) {

    DPRINTFN(6, "busy %p\n", pq->curr);
    return;
   }
  }
 } else {

  pq->curr = ((void*)0);
 }

 if (!pq->recurse_1) {


  pq->recurse_3 = 0;

  do {

   pq->recurse_1 = 1;
   pq->recurse_2 = 1;

   if (pq->curr == ((void*)0)) {
    xfer = TAILQ_FIRST(&pq->head);
    if (xfer) {
     TAILQ_REMOVE(&pq->head, xfer,
         wait_entry);
     xfer->wait_queue = ((void*)0);
     pq->curr = xfer;
    } else {
     break;
    }
   }
   DPRINTFN(6, "cb %p (enter)\n", pq->curr);
   (pq->command) (pq);
   DPRINTFN(6, "cb %p (leave)\n", pq->curr);





   pq->recurse_3 = 1;

  } while (!pq->recurse_2);


  pq->recurse_1 = 0;

 } else {

  pq->recurse_2 = 0;
 }
}
