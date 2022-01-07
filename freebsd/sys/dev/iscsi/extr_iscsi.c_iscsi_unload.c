
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_cv; int sc_lock; int * sc_shutdown_post_eh; int * sc_shutdown_pre_eh; int * sc_cdev; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int ISCSI_DEBUG (char*) ;
 int M_ISCSI ;
 int cv_destroy (int *) ;
 int destroy_dev (int *) ;
 int free (TYPE_1__*,int ) ;
 int iscsi_outstanding_zone ;
 int iscsi_terminate_sessions (TYPE_1__*) ;
 TYPE_1__* sc ;
 int shutdown_post_sync ;
 int shutdown_pre_sync ;
 int sx_destroy (int *) ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
iscsi_unload(void)
{

 if (sc->sc_cdev != ((void*)0)) {
  ISCSI_DEBUG("removing device node");
  destroy_dev(sc->sc_cdev);
  ISCSI_DEBUG("device node removed");
 }

 if (sc->sc_shutdown_pre_eh != ((void*)0))
  EVENTHANDLER_DEREGISTER(shutdown_pre_sync, sc->sc_shutdown_pre_eh);
 if (sc->sc_shutdown_post_eh != ((void*)0))
  EVENTHANDLER_DEREGISTER(shutdown_post_sync, sc->sc_shutdown_post_eh);

 iscsi_terminate_sessions(sc);

 uma_zdestroy(iscsi_outstanding_zone);
 sx_destroy(&sc->sc_lock);
 cv_destroy(&sc->sc_cv);
 free(sc, M_ISCSI);
 return (0);
}
