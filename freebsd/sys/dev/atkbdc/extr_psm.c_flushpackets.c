
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int pqueue; } ;


 int bzero (int *,int) ;
 int dropqueue (struct psm_softc*) ;

__attribute__((used)) static void
flushpackets(struct psm_softc *sc)
{

 dropqueue(sc);
 bzero(&sc->pqueue, sizeof(sc->pqueue));
}
