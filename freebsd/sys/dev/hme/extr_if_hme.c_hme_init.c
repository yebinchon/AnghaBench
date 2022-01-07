
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_softc {int dummy; } ;


 int HME_LOCK (struct hme_softc*) ;
 int HME_UNLOCK (struct hme_softc*) ;
 int hme_init_locked (struct hme_softc*) ;

__attribute__((used)) static void
hme_init(void *xsc)
{
 struct hme_softc *sc = (struct hme_softc *)xsc;

 HME_LOCK(sc);
 hme_init_locked(sc);
 HME_UNLOCK(sc);
}
