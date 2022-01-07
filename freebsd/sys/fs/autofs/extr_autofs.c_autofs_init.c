
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsconf {int dummy; } ;
struct autofs_request {int dummy; } ;
struct autofs_node {int dummy; } ;
struct TYPE_6__ {TYPE_1__* si_drv1; } ;
struct TYPE_5__ {TYPE_2__* sc_cdev; int sc_lock; int sc_cv; int sc_requests; } ;


 int AUTOFS_WARN (char*,int) ;
 int GID_WHEEL ;
 int KASSERT (int ,char*) ;
 int MAKEDEV_CHECKNAME ;
 int M_AUTOFS ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int UMA_ALIGN_PTR ;
 int autofs_cdevsw ;
 int autofs_node_zone ;
 int autofs_request_zone ;
 TYPE_1__* autofs_softc ;
 int cv_init (int *,char*) ;
 int free (TYPE_1__*,int ) ;
 int make_dev_p (int ,TYPE_2__**,int *,int *,int ,int ,int,char*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int sx_init (int *,char*) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zdestroy (int ) ;

int
autofs_init(struct vfsconf *vfsp)
{
 int error;

 KASSERT(autofs_softc == ((void*)0),
     ("softc %p, should be NULL", autofs_softc));

 autofs_softc = malloc(sizeof(*autofs_softc), M_AUTOFS,
     M_WAITOK | M_ZERO);

 autofs_request_zone = uma_zcreate("autofs_request",
     sizeof(struct autofs_request), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 autofs_node_zone = uma_zcreate("autofs_node",
     sizeof(struct autofs_node), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);

 TAILQ_INIT(&autofs_softc->sc_requests);
 cv_init(&autofs_softc->sc_cv, "autofscv");
 sx_init(&autofs_softc->sc_lock, "autofslk");

 error = make_dev_p(MAKEDEV_CHECKNAME, &autofs_softc->sc_cdev,
     &autofs_cdevsw, ((void*)0), UID_ROOT, GID_WHEEL, 0600, "autofs");
 if (error != 0) {
  AUTOFS_WARN("failed to create device node, error %d", error);
  uma_zdestroy(autofs_request_zone);
  uma_zdestroy(autofs_node_zone);
  free(autofs_softc, M_AUTOFS);

  return (error);
 }
 autofs_softc->sc_cdev->si_drv1 = autofs_softc;

 return (0);
}
