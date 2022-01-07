
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {int dummy; } ;


 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 int sfxge_start (struct sfxge_softc*) ;

__attribute__((used)) static void
sfxge_if_init(void *arg)
{
 struct sfxge_softc *sc;

 sc = (struct sfxge_softc *)arg;

 SFXGE_ADAPTER_LOCK(sc);
 (void)sfxge_start(sc);
 SFXGE_ADAPTER_UNLOCK(sc);
}
