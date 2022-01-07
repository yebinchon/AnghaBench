
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_ltr_enabled; } ;
struct iwm_ltr_config_cmd {int flags; } ;
typedef int cmd ;


 int IWM_LTR_CFG_FLAG_FEATURE_ENABLE ;
 int IWM_LTR_CONFIG ;
 int htole32 (int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_ltr_config_cmd*) ;

__attribute__((used)) static int
iwm_mvm_config_ltr(struct iwm_softc *sc)
{
 struct iwm_ltr_config_cmd cmd = {
  .flags = htole32(IWM_LTR_CFG_FLAG_FEATURE_ENABLE),
 };

 if (!sc->sc_ltr_enabled)
  return 0;

 return iwm_mvm_send_cmd_pdu(sc, IWM_LTR_CONFIG, 0, sizeof(cmd), &cmd);
}
