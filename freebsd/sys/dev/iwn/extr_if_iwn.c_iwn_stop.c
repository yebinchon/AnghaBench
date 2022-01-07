
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 int iwn_stop_locked (struct iwn_softc*) ;

__attribute__((used)) static void
iwn_stop(struct iwn_softc *sc)
{
 IWN_LOCK(sc);
 iwn_stop_locked(sc);
 IWN_UNLOCK(sc);
}
