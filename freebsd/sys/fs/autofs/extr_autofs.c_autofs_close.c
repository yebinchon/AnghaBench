
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int sc_dev_opened; int sc_lock; } ;


 int KASSERT (int,char*) ;
 TYPE_1__* autofs_softc ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
autofs_close(struct cdev *dev, int flag, int fmt, struct thread *td)
{

 sx_xlock(&autofs_softc->sc_lock);
 KASSERT(autofs_softc->sc_dev_opened, ("not opened?"));
 autofs_softc->sc_dev_opened = 0;
 sx_xunlock(&autofs_softc->sc_lock);

 return (0);
}
