
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {TYPE_2__* sc; } ;
struct TYPE_6__ {TYPE_1__ app_sc; TYPE_3__* hv_appvss_dev; TYPE_1__ daemon_sc; TYPE_3__* hv_vss_dev; int task; int pending_mutex; int dev; } ;
typedef TYPE_2__ hv_vss_sc ;
typedef int device_t ;
struct TYPE_7__ {TYPE_1__* si_drv1; } ;


 int APP_VSS_DEV_NAME ;
 int CTLFLAG_RWTUN ;
 int FS_VSS_DEV_NAME ;
 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int MTX_DEF ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int TASK_INIT (int *,int ,int ,TYPE_2__*) ;
 int UID_ROOT ;
 scalar_t__ device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int hv_appvss_cdevsw ;
 int hv_vss_callback ;
 int hv_vss_cdevsw ;
 int hv_vss_init_send_receive_queue (int ) ;
 int hv_vss_log ;
 int hv_vss_log_info (char*,int ,int) ;
 int hv_vss_process_request ;
 int make_dev_p (int,TYPE_3__**,int *,int ,int ,int ,int,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int vmbus_ic_attach (int ,int ) ;

__attribute__((used)) static int
hv_vss_attach(device_t dev)
{
 int error;
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;

 hv_vss_sc *sc = (hv_vss_sc*)device_get_softc(dev);

 sc->dev = dev;
 mtx_init(&sc->pending_mutex, "hv_vss pending mutex", ((void*)0), MTX_DEF);

 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));

 SYSCTL_ADD_INT(ctx, child, OID_AUTO, "hv_vss_log",
     CTLFLAG_RWTUN, &hv_vss_log, 0, "Hyperv VSS service log level");

 TASK_INIT(&sc->task, 0, hv_vss_process_request, sc);
 hv_vss_init_send_receive_queue(dev);

 error = make_dev_p(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
      &sc->hv_vss_dev,
      &hv_vss_cdevsw,
      0,
      UID_ROOT,
      GID_WHEEL,
      0640,
      FS_VSS_DEV_NAME);

 if (error != 0) {
  hv_vss_log_info("Fail to create '%s': %d\n", FS_VSS_DEV_NAME, error);
  return (error);
 }
 sc->hv_vss_dev->si_drv1 = &sc->daemon_sc;
 sc->daemon_sc.sc = sc;

 error = make_dev_p(MAKEDEV_CHECKNAME | MAKEDEV_WAITOK,
      &sc->hv_appvss_dev,
      &hv_appvss_cdevsw,
      0,
      UID_ROOT,
      GID_WHEEL,
      0640,
      APP_VSS_DEV_NAME);

 if (error != 0) {
  hv_vss_log_info("Fail to create '%s': %d\n", APP_VSS_DEV_NAME, error);
  return (error);
 }
 sc->hv_appvss_dev->si_drv1 = &sc->app_sc;
 sc->app_sc.sc = sc;

 return (vmbus_ic_attach(dev, hv_vss_callback));
}
