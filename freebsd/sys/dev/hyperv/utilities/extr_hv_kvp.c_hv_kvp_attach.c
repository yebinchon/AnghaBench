
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_4__ {TYPE_2__* hv_kvp_dev; int task; int pending_mutex; int dev_sema; int dev; } ;
typedef TYPE_1__ hv_kvp_sc ;
typedef int device_t ;
struct TYPE_5__ {TYPE_1__* si_drv1; } ;


 int CTLFLAG_RWTUN ;
 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int MTX_DEF ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,TYPE_1__*) ;
 int UID_ROOT ;
 scalar_t__ device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int hv_kvp_callback ;
 int hv_kvp_cdevsw ;
 int hv_kvp_log ;
 int hv_kvp_process_request ;
 int make_dev_p (int,TYPE_2__**,int *,int ,int ,int ,int,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sema_init (int *,int ,char*) ;
 int vmbus_ic_attach (int ,int ) ;

__attribute__((used)) static int
hv_kvp_attach(device_t dev)
{
 int error;
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;

 hv_kvp_sc *sc = (hv_kvp_sc*)device_get_softc(dev);

 sc->dev = dev;
 sema_init(&sc->dev_sema, 0, "hv_kvp device semaphore");
 mtx_init(&sc->pending_mutex, "hv-kvp pending mutex",
  ((void*)0), MTX_DEF);

 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "hv_kvp_log",
     CTLFLAG_RWTUN, &hv_kvp_log, 0, "Hyperv KVP service log level");

 TASK_INIT(&sc->task, 0, hv_kvp_process_request, sc);


 error = make_dev_p(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
   &sc->hv_kvp_dev,
   &hv_kvp_cdevsw,
   0,
   UID_ROOT,
   GID_WHEEL,
   0640,
   "hv_kvp_dev");

 if (error != 0)
  return (error);
 sc->hv_kvp_dev->si_drv1 = sc;

 return (vmbus_ic_attach(dev, hv_kvp_callback));
}
