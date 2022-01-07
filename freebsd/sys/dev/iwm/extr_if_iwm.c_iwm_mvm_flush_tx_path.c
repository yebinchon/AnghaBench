
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_tx_path_flush_cmd {int flush_ctl; int queues_ctl; } ;
struct iwm_softc {int sc_dev; } ;
typedef int flush_cmd ;


 int IWM_DUMP_TX_FIFO_FLUSH ;
 int IWM_TXPATH_FLUSH ;
 int device_printf (int ,char*,int) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_tx_path_flush_cmd*) ;

int
iwm_mvm_flush_tx_path(struct iwm_softc *sc, uint32_t tfd_msk, uint32_t flags)
{
 int ret;
 struct iwm_tx_path_flush_cmd flush_cmd = {
  .queues_ctl = htole32(tfd_msk),
  .flush_ctl = htole16(IWM_DUMP_TX_FIFO_FLUSH),
 };

 ret = iwm_mvm_send_cmd_pdu(sc, IWM_TXPATH_FLUSH, flags,
     sizeof(flush_cmd), &flush_cmd);
 if (ret)
                device_printf(sc->sc_dev,
      "Flushing tx queue failed: %d\n", ret);
 return ret;
}
