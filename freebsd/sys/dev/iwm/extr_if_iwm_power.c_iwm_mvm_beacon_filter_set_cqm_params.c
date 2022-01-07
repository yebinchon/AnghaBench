
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_vap {int dummy; } ;
struct TYPE_2__ {int ba_enabled; } ;
struct iwm_softc {TYPE_1__ sc_bf; } ;
struct iwm_beacon_filter_cmd {int ba_enable_beacon_abort; } ;


 int htole32 (int ) ;

__attribute__((used)) static void
iwm_mvm_beacon_filter_set_cqm_params(struct iwm_softc *sc,
 struct iwm_vap *ivp, struct iwm_beacon_filter_cmd *cmd)
{
 cmd->ba_enable_beacon_abort = htole32(sc->sc_bf.ba_enabled);
}
