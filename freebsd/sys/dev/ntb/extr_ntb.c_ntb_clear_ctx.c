
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int ctx_lock; int * ctx_ops; int * ctx; } ;
typedef int device_t ;


 struct ntb_child* device_get_ivars (int ) ;
 int rm_wlock (int *) ;
 int rm_wunlock (int *) ;

void
ntb_clear_ctx(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 rm_wlock(&nc->ctx_lock);
 nc->ctx = ((void*)0);
 nc->ctx_ops = ((void*)0);
 rm_wunlock(&nc->ctx_lock);
}
