
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dev_lock; TYPE_1__* ifp; } ;
struct TYPE_5__ {int if_flags; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int IFF_UP ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int oce_if_activate (TYPE_2__*) ;
 int oce_if_deactivate (TYPE_2__*) ;

__attribute__((used)) static void
oce_init(void *arg)
{
 POCE_SOFTC sc = arg;

 LOCK(&sc->dev_lock);

 if (sc->ifp->if_flags & IFF_UP) {
  oce_if_deactivate(sc);
  oce_if_activate(sc);
 }

 UNLOCK(&sc->dev_lock);

}
