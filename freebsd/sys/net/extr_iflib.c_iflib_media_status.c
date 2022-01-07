
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int dummy; } ;
typedef int if_t ;
typedef int if_ctx_t ;


 int CTX_LOCK (int ) ;
 int CTX_UNLOCK (int ) ;
 int IFDI_MEDIA_STATUS (int ,struct ifmediareq*) ;
 int IFDI_UPDATE_ADMIN_STATUS (int ) ;
 int if_getsoftc (int ) ;

__attribute__((used)) static void
iflib_media_status(if_t ifp, struct ifmediareq *ifmr)
{
 if_ctx_t ctx = if_getsoftc(ifp);

 CTX_LOCK(ctx);
 IFDI_UPDATE_ADMIN_STATUS(ctx);
 IFDI_MEDIA_STATUS(ctx, ifmr);
 CTX_UNLOCK(ctx);
}
