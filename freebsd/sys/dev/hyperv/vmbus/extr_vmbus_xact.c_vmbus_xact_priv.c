
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmbus_xact {void* x_priv; TYPE_1__* x_ctx; } ;
struct TYPE_2__ {size_t xc_priv_size; } ;


 int panic (char*,size_t) ;

void *
vmbus_xact_priv(const struct vmbus_xact *xact, size_t priv_len)
{

 if (priv_len > xact->x_ctx->xc_priv_size)
  panic("invalid priv size %zu", priv_len);
 return (xact->x_priv);
}
