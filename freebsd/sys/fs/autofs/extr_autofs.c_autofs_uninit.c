
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsconf {int dummy; } ;
struct TYPE_3__ {int sc_lock; int * sc_cdev; scalar_t__ sc_dev_opened; } ;


 int EBUSY ;
 int M_AUTOFS ;
 int autofs_node_zone ;
 int autofs_request_zone ;
 TYPE_1__* autofs_softc ;
 int destroy_dev (int *) ;
 int free (TYPE_1__*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int uma_zdestroy (int ) ;

int
autofs_uninit(struct vfsconf *vfsp)
{

 sx_xlock(&autofs_softc->sc_lock);
 if (autofs_softc->sc_dev_opened) {
  sx_xunlock(&autofs_softc->sc_lock);
  return (EBUSY);
 }
 if (autofs_softc->sc_cdev != ((void*)0))
  destroy_dev(autofs_softc->sc_cdev);

 uma_zdestroy(autofs_request_zone);
 uma_zdestroy(autofs_node_zone);

 sx_xunlock(&autofs_softc->sc_lock);



 free(autofs_softc, M_AUTOFS);

 return (0);
}
