
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_softc {int dummy; } ;


 int HME_LOCK (struct hme_softc*) ;
 int HME_UNLOCK (struct hme_softc*) ;
 int hme_stop (struct hme_softc*) ;

void
hme_suspend(struct hme_softc *sc)
{

 HME_LOCK(sc);
 hme_stop(sc);
 HME_UNLOCK(sc);
}
