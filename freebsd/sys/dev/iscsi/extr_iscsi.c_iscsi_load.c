
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iscsi_outstanding {int dummy; } ;
struct TYPE_6__ {TYPE_1__* si_drv1; } ;
struct TYPE_5__ {void* sc_shutdown_post_eh; void* sc_shutdown_pre_eh; TYPE_3__* sc_cdev; int sc_cv; int sc_sessions; int sc_lock; } ;


 void* EVENTHANDLER_REGISTER (int ,int ,TYPE_1__*,scalar_t__) ;
 int GID_WHEEL ;
 int ISCSI_WARN (char*,int) ;
 int MAKEDEV_CHECKNAME ;
 int M_ISCSI ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ SHUTDOWN_PRI_DEFAULT ;
 scalar_t__ SHUTDOWN_PRI_FIRST ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int UMA_ALIGN_PTR ;
 int cv_init (int *,char*) ;
 int iscsi_cdevsw ;
 int iscsi_outstanding_zone ;
 int iscsi_shutdown_post ;
 int iscsi_shutdown_pre ;
 int make_dev_p (int ,TYPE_3__**,int *,int *,int ,int ,int,char*) ;
 TYPE_1__* malloc (int,int ,int) ;
 TYPE_1__* sc ;
 int shutdown_post_sync ;
 int shutdown_pre_sync ;
 int sx_init (int *,char*) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static int
iscsi_load(void)
{
 int error;

 sc = malloc(sizeof(*sc), M_ISCSI, M_ZERO | M_WAITOK);
 sx_init(&sc->sc_lock, "iscsi");
 TAILQ_INIT(&sc->sc_sessions);
 cv_init(&sc->sc_cv, "iscsi_cv");

 iscsi_outstanding_zone = uma_zcreate("iscsi_outstanding",
     sizeof(struct iscsi_outstanding), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);

 error = make_dev_p(MAKEDEV_CHECKNAME, &sc->sc_cdev, &iscsi_cdevsw,
     ((void*)0), UID_ROOT, GID_WHEEL, 0600, "iscsi");
 if (error != 0) {
  ISCSI_WARN("failed to create device node, error %d", error);
  return (error);
 }
 sc->sc_cdev->si_drv1 = sc;

 sc->sc_shutdown_pre_eh = EVENTHANDLER_REGISTER(shutdown_pre_sync,
     iscsi_shutdown_pre, sc, SHUTDOWN_PRI_FIRST);






 sc->sc_shutdown_post_eh = EVENTHANDLER_REGISTER(shutdown_post_sync,
     iscsi_shutdown_post, sc, SHUTDOWN_PRI_DEFAULT - 1);

 return (0);
}
