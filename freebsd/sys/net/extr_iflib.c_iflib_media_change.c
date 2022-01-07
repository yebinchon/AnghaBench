
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if_t ;
typedef int if_ctx_t ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int IFDI_MEDIA_CHANGE (int ) ;
 int if_getsoftc (int ) ;
 int iflib_init_locked (int ) ;

__attribute__((used)) static int
iflib_media_change(if_t ifp)
{
 if_ctx_t ctx = if_getsoftc(ifp);
 int err;

 CTX_LOCK(ctx);
 if ((err = IFDI_MEDIA_CHANGE(ctx)) == 0)
  iflib_init_locked(ctx);
 CTX_UNLOCK(ctx);
 return (err);
}
