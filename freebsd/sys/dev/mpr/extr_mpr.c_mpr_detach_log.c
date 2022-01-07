
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int * mpr_log_eh; } ;


 int mpr_deregister_events (struct mpr_softc*,int *) ;

__attribute__((used)) static int
mpr_detach_log(struct mpr_softc *sc)
{

 if (sc->mpr_log_eh != ((void*)0))
  mpr_deregister_events(sc, sc->mpr_log_eh);
 return (0);
}
