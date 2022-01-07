
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tfd_queue_msk; int sta_id; } ;
struct iwm_softc {TYPE_1__ sc_aux_sta; } ;


 int IWM_AUX_STA_ID ;
 int IWM_MAC_INDEX_AUX ;
 int IWM_MVM_AUX_QUEUE ;
 int IWM_MVM_STATION_COUNT ;
 int IWM_MVM_TX_FIFO_MCAST ;
 int iwm_enable_txq (struct iwm_softc*,int ,int,int ) ;
 int iwm_mvm_add_int_sta_common (struct iwm_softc*,TYPE_1__*,int *,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

int
iwm_mvm_add_aux_sta(struct iwm_softc *sc)
{
 int ret;

 sc->sc_aux_sta.sta_id = IWM_AUX_STA_ID;
 sc->sc_aux_sta.tfd_queue_msk = (1 << IWM_MVM_AUX_QUEUE);


 ret = iwm_enable_txq(sc, IWM_AUX_STA_ID, IWM_MVM_AUX_QUEUE,
     IWM_MVM_TX_FIFO_MCAST);
 if (ret)
  return ret;

 ret = iwm_mvm_add_int_sta_common(sc, &sc->sc_aux_sta, ((void*)0),
      IWM_MAC_INDEX_AUX, 0);

 if (ret) {
  memset(&sc->sc_aux_sta, 0, sizeof(sc->sc_aux_sta));
  sc->sc_aux_sta.sta_id = IWM_MVM_STATION_COUNT;
 }
 return ret;
}
