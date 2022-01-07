
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int dummy; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int dtsec_if_init_locked (struct dtsec_softc*) ;

__attribute__((used)) static void
dtsec_if_init(void *data)
{
 struct dtsec_softc *sc;

 sc = data;

 DTSEC_LOCK(sc);
 dtsec_if_init_locked(sc);
 DTSEC_UNLOCK(sc);
}
