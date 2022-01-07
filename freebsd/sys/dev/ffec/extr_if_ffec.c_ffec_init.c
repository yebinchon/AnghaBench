
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffec_softc {int dummy; } ;


 int FFEC_LOCK (struct ffec_softc*) ;
 int FFEC_UNLOCK (struct ffec_softc*) ;
 int ffec_init_locked (struct ffec_softc*) ;

__attribute__((used)) static void
ffec_init(void *if_softc)
{
 struct ffec_softc *sc = if_softc;

 FFEC_LOCK(sc);
 ffec_init_locked(sc);
 FFEC_UNLOCK(sc);
}
