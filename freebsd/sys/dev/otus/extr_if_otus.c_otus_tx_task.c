
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;


 int OTUS_LOCK (struct otus_softc*) ;
 int OTUS_UNLOCK (struct otus_softc*) ;
 int _otus_start (struct otus_softc*) ;

__attribute__((used)) static void
otus_tx_task(void *arg, int pending)
{
 struct otus_softc *sc = arg;

 OTUS_LOCK(sc);
 _otus_start(sc);
 OTUS_UNLOCK(sc);
}
