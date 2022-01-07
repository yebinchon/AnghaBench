
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_xfer {int (* hand ) (struct fw_xfer*) ;int * fc; } ;


 int fw_tl_free (int *,struct fw_xfer*) ;
 int panic (char*) ;
 int printf (char*) ;
 int stub1 (struct fw_xfer*) ;

void
fw_xfer_done(struct fw_xfer *xfer)
{
 if (xfer->hand == ((void*)0)) {
  printf("hand == NULL\n");
  return;
 }

 if (xfer->fc == ((void*)0))
  panic("fw_xfer_done: why xfer->fc is NULL?");

 fw_tl_free(xfer->fc, xfer);
 xfer->hand(xfer);
}
