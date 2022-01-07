
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_ctx_ops {int (* link_event ) (void*) ;} ;
struct ntb_child {int ctx_lock; struct ntb_ctx_ops const* ctx_ops; void* ctx; } ;
typedef int device_t ;


 int EINVAL ;
 struct ntb_child* device_get_ivars (int ) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;
 int stub1 (void*) ;

int
ntb_set_ctx(device_t ntb, void *ctx, const struct ntb_ctx_ops *ctx_ops)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 if (ctx == ((void*)0) || ctx_ops == ((void*)0))
  return (EINVAL);

 rm_wlock(&nc->ctx_lock);
 if (nc->ctx_ops != ((void*)0)) {
  rm_wunlock(&nc->ctx_lock);
  return (EINVAL);
 }
 nc->ctx = ctx;
 nc->ctx_ops = ctx_ops;





 if (ctx_ops->link_event != ((void*)0))
  ctx_ops->link_event(ctx);
 rm_wunlock(&nc->ctx_lock);

 return (0);
}
