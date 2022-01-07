
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {int dummy; } ;


 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int bfe_init_locked (void*) ;

__attribute__((used)) static void
bfe_init(void *xsc)
{
 BFE_LOCK((struct bfe_softc *)xsc);
 bfe_init_locked(xsc);
 BFE_UNLOCK((struct bfe_softc *)xsc);
}
