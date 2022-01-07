
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {scalar_t__ fw_state; int flags; } ;
struct ieee80211com {struct iwi_softc* ic_softc; } ;


 int IWI_CMD_ABORT_SCAN ;
 int IWI_FLAG_CHANNEL_SCAN ;
 scalar_t__ IWI_FW_SCANNING ;
 int IWI_LOCK (struct iwi_softc*) ;
 int IWI_LOCK_DECL ;
 int IWI_UNLOCK (struct iwi_softc*) ;
 int iwi_cmd (struct iwi_softc*,int ,int *,int ) ;

__attribute__((used)) static void
iwi_scan_end(struct ieee80211com *ic)
{
 struct iwi_softc *sc = ic->ic_softc;
 IWI_LOCK_DECL;

 IWI_LOCK(sc);
 sc->flags &= ~IWI_FLAG_CHANNEL_SCAN;

 if (sc->fw_state == IWI_FW_SCANNING)
  iwi_cmd(sc, IWI_CMD_ABORT_SCAN, ((void*)0), 0);
 IWI_UNLOCK(sc);
}
