
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int * mps_log_eh; } ;


 int mps_deregister_events (struct mps_softc*,int *) ;

__attribute__((used)) static int
mps_detach_log(struct mps_softc *sc)
{

 if (sc->mps_log_eh != ((void*)0))
  mps_deregister_events(sc, sc->mps_log_eh);
 return (0);
}
