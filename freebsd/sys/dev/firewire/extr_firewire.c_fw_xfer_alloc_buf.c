
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct malloc_type {int dummy; } ;
struct TYPE_4__ {int pay_len; int * payload; } ;
struct TYPE_3__ {int pay_len; int * payload; } ;
struct fw_xfer {TYPE_2__ send; TYPE_1__ recv; } ;


 int M_NOWAIT ;
 int M_ZERO ;
 int free (int *,struct malloc_type*) ;
 struct fw_xfer* fw_xfer_alloc (struct malloc_type*) ;
 int fw_xfer_free (struct fw_xfer*) ;
 void* malloc (int,struct malloc_type*,int) ;

struct fw_xfer *
fw_xfer_alloc_buf(struct malloc_type *type, int send_len, int recv_len)
{
 struct fw_xfer *xfer;

 xfer = fw_xfer_alloc(type);
 if (xfer == ((void*)0))
  return (((void*)0));
 xfer->send.pay_len = send_len;
 xfer->recv.pay_len = recv_len;
 if (send_len > 0) {
  xfer->send.payload = malloc(send_len, type, M_NOWAIT | M_ZERO);
  if (xfer->send.payload == ((void*)0)) {
   fw_xfer_free(xfer);
   return (((void*)0));
  }
 }
 if (recv_len > 0) {
  xfer->recv.payload = malloc(recv_len, type, M_NOWAIT);
  if (xfer->recv.payload == ((void*)0)) {
   if (xfer->send.payload != ((void*)0))
    free(xfer->send.payload, type);
   fw_xfer_free(xfer);
   return (((void*)0));
  }
 }
 return (xfer);
}
