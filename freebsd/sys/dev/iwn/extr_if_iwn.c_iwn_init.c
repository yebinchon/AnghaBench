
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int IWN_LOCK (struct iwn_softc*) ;
 int IWN_UNLOCK (struct iwn_softc*) ;
 int iwn_init_locked (struct iwn_softc*) ;

__attribute__((used)) static int
iwn_init(struct iwn_softc *sc)
{
 int error;

 IWN_LOCK(sc);
 error = iwn_init_locked(sc);
 IWN_UNLOCK(sc);

 return (error);
}
