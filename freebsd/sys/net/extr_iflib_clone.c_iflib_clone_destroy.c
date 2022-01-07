
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {int dummy; } ;
typedef int if_t ;
typedef int if_ctx_t ;
typedef int device_t ;


 int Giant ;
 int device_delete_child (int ,int ) ;
 int if_getsoftc (int ) ;
 struct sx* iflib_ctx_lock_get (int ) ;
 int iflib_get_dev (int ) ;
 int iflib_pseudo_deregister (int ) ;
 int iflib_pseudodev ;
 int iflib_set_detach (int ) ;
 int iflib_stop (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (struct sx*) ;
 int sx_xunlock (struct sx*) ;

__attribute__((used)) static void
iflib_clone_destroy(if_t ifp)
{
 if_ctx_t ctx;
 device_t dev;
 struct sx *ctx_lock;
 int rc;




 ctx = if_getsoftc(ifp);
 dev = iflib_get_dev(ctx);
 ctx_lock = iflib_ctx_lock_get(ctx);
 sx_xlock(ctx_lock);
 iflib_set_detach(ctx);
 iflib_stop(ctx);
 sx_xunlock(ctx_lock);

 mtx_lock(&Giant);
 rc = device_delete_child(iflib_pseudodev, dev);
 mtx_unlock(&Giant);
 if (rc == 0)
  iflib_pseudo_deregister(ctx);
}
