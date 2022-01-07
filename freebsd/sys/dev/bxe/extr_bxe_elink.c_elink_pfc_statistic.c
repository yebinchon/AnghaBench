
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_vars {scalar_t__ mac_type; int link_up; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 scalar_t__ ELINK_MAC_TYPE_EMAC ;
 int elink_emac_get_pfc_stat (struct elink_params*,int *,int *) ;

void elink_pfc_statistic(struct elink_params *params, struct elink_vars *vars,
    uint32_t pfc_frames_sent[2],
    uint32_t pfc_frames_received[2])
{

 struct bxe_softc *sc = params->sc;

 ELINK_DEBUG_P0(sc, "pfc statistic\n");

 if (!vars->link_up)
  return;

 if (vars->mac_type == ELINK_MAC_TYPE_EMAC) {
  ELINK_DEBUG_P0(sc, "About to read PFC stats from EMAC\n");
  elink_emac_get_pfc_stat(params, pfc_frames_sent,
     pfc_frames_received);
 }
}
