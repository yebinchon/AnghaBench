
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {size_t xc_req_size; } ;
struct vmbus_xact {int x_req; } ;


 int VMBUS_XACT_CTXF_DESTROY ;
 int memset (int ,int ,size_t) ;
 int panic (char*,size_t) ;
 struct vmbus_xact* vmbus_xact_get1 (struct vmbus_xact_ctx*,int ) ;

struct vmbus_xact *
vmbus_xact_get(struct vmbus_xact_ctx *ctx, size_t req_len)
{
 struct vmbus_xact *xact;

 if (req_len > ctx->xc_req_size)
  panic("invalid request size %zu", req_len);

 xact = vmbus_xact_get1(ctx, VMBUS_XACT_CTXF_DESTROY);
 if (xact == ((void*)0))
  return (((void*)0));

 memset(xact->x_req, 0, req_len);
 return (xact);
}
