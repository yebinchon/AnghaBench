
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_id; } ;
struct iwm_softc {TYPE_1__ sc_aux_sta; } ;


 int IWM_MVM_STATION_COUNT ;
 int memset (TYPE_1__*,int ,int) ;

void iwm_mvm_del_aux_sta(struct iwm_softc *sc)
{
 memset(&sc->sc_aux_sta, 0, sizeof(sc->sc_aux_sta));
 sc->sc_aux_sta.sta_id = IWM_MVM_STATION_COUNT;
}
