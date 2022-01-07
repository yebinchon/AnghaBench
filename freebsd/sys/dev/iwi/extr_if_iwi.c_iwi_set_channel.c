
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwi_softc {scalar_t__ fw_state; } ;
struct ieee80211com {TYPE_1__* ic_curchan; struct iwi_softc* ic_softc; } ;
struct TYPE_2__ {int ic_ieee; } ;


 scalar_t__ IWI_FW_IDLE ;
 int iwi_setcurchan (struct iwi_softc*,int ) ;

__attribute__((used)) static void
iwi_set_channel(struct ieee80211com *ic)
{
 struct iwi_softc *sc = ic->ic_softc;

 if (sc->fw_state == IWI_FW_IDLE)
  iwi_setcurchan(sc, ic->ic_curchan->ic_ieee);
}
