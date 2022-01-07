
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int dummy; } ;


 int malo_stop (struct malo_softc*) ;

void
malo_suspend(struct malo_softc *sc)
{

 malo_stop(sc);
}
