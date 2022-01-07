
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int kobj_t ;
typedef int kobj_class_t ;
typedef int * if_t ;
typedef TYPE_1__* if_shared_ctx_t ;
typedef TYPE_2__* if_ctx_t ;
typedef int driver_t ;
typedef int device_t ;
struct TYPE_10__ {int * ifc_mediap; int ifc_media; void* ifc_vlan_detach_event; void* ifc_vlan_attach_event; int * ifc_ifp; int ifc_dev; TYPE_1__* ifc_sctx; } ;
struct TYPE_9__ {int isc_flags; int * isc_driver; } ;


 int CTX_LOCK_INIT (TYPE_2__*) ;
 int ENOMEM ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,TYPE_2__*,int ) ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFLIB_DRIVER_MEDIA ;
 int IFM_IMASK ;
 int IFT_ETHER ;
 int STATE_LOCK_INIT (TYPE_2__*,int ) ;
 int _iflib_assert (TYPE_1__*) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int * if_alloc (int ) ;
 int if_initname (int *,int ,int ) ;
 int if_setdev (int *,int ) ;
 int if_setflags (int *,int) ;
 int if_setinitfn (int *,int ) ;
 int if_setioctlfn (int *,int ) ;
 int if_setqflushfn (int *,int ) ;
 int if_setsendqready (int *) ;
 int if_setsoftc (int *,TYPE_2__*) ;
 int if_setstartfn (int *,int ) ;
 int if_settransmitfn (int *,int ) ;
 int iflib_altq_if_start ;
 int iflib_altq_if_transmit ;
 int iflib_if_init ;
 int iflib_if_ioctl ;
 int iflib_if_qflush ;
 int iflib_if_transmit ;
 int iflib_media_change ;
 int iflib_media_status ;
 int iflib_vlan_register ;
 int iflib_vlan_unregister ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int kobj_class_compile (int ) ;
 int kobj_init (int ,int ) ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static int
iflib_register(if_ctx_t ctx)
{
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 driver_t *driver = sctx->isc_driver;
 device_t dev = ctx->ifc_dev;
 if_t ifp;

 _iflib_assert(sctx);

 CTX_LOCK_INIT(ctx);
 STATE_LOCK_INIT(ctx, device_get_nameunit(ctx->ifc_dev));
 ifp = ctx->ifc_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not allocate ifnet structure\n");
  return (ENOMEM);
 }




 kobj_init((kobj_t) ctx, (kobj_class_t) driver);
 kobj_class_compile((kobj_class_t) driver);

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 if_setsoftc(ifp, ctx);
 if_setdev(ifp, dev);
 if_setinitfn(ifp, iflib_if_init);
 if_setioctlfn(ifp, iflib_if_ioctl);





 if_settransmitfn(ifp, iflib_if_transmit);

 if_setqflushfn(ifp, iflib_if_qflush);
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);

 ctx->ifc_vlan_attach_event =
  EVENTHANDLER_REGISTER(vlan_config, iflib_vlan_register, ctx,
         EVENTHANDLER_PRI_FIRST);
 ctx->ifc_vlan_detach_event =
  EVENTHANDLER_REGISTER(vlan_unconfig, iflib_vlan_unregister, ctx,
         EVENTHANDLER_PRI_FIRST);

 if ((sctx->isc_flags & IFLIB_DRIVER_MEDIA) == 0) {
  ctx->ifc_mediap = &ctx->ifc_media;
  ifmedia_init(ctx->ifc_mediap, IFM_IMASK,
      iflib_media_change, iflib_media_status);
 }
 return (0);
}
