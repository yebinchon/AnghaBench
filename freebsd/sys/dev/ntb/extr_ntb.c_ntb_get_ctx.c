
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_ctx_ops {int dummy; } ;
struct ntb_child {void* ctx; struct ntb_ctx_ops* ctx_ops; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 struct ntb_child* device_get_ivars (int ) ;

void *
ntb_get_ctx(device_t ntb, const struct ntb_ctx_ops **ctx_ops)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 KASSERT(nc->ctx != ((void*)0) && nc->ctx_ops != ((void*)0), ("bogus"));
 if (ctx_ops != ((void*)0))
  *ctx_ops = nc->ctx_ops;
 return (nc->ctx);
}
