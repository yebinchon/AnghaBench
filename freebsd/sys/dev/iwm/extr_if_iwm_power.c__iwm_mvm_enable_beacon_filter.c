
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_vap {int dummy; } ;
struct TYPE_2__ {int bf_enabled; } ;
struct iwm_softc {TYPE_1__ sc_bf; } ;
struct iwm_beacon_filter_cmd {int dummy; } ;


 int iwm_mvm_beacon_filter_send_cmd (struct iwm_softc*,struct iwm_beacon_filter_cmd*) ;
 int iwm_mvm_beacon_filter_set_cqm_params (struct iwm_softc*,struct iwm_vap*,struct iwm_beacon_filter_cmd*) ;

__attribute__((used)) static int
_iwm_mvm_enable_beacon_filter(struct iwm_softc *sc, struct iwm_vap *ivp,
 struct iwm_beacon_filter_cmd *cmd)
{
 int ret;

 iwm_mvm_beacon_filter_set_cqm_params(sc, ivp, cmd);
 ret = iwm_mvm_beacon_filter_send_cmd(sc, cmd);

 if (!ret)
  sc->sc_bf.bf_enabled = 1;

 return ret;
}
