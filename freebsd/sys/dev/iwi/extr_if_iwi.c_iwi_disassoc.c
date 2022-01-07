
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;


 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int iwi_disassociate (struct iwi_softc*,int ) ;

__attribute__((used)) static void
iwi_disassoc(void *arg, int pending)
{
 struct iwi_softc *sc = arg;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 iwi_disassociate(sc, 0);
 IWI_UNLOCK(sc);
}
