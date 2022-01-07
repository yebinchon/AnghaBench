
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int ic_macaddr; } ;
struct rtwn_softc {TYPE_1__ sc_ic; struct r12a_softc* sc_priv; } ;
struct r12a_softc {int bt_coex; int bt_ant_num; void* ext_lna_5g; void* ext_lna_2g; int ext_pa_5g; int ext_pa_2g; } ;
struct r12a_rom {int rf_bt_opt; int macaddr_21a; int lna_type_5g; int lna_type_2g; int pa_type; } ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 int R12A_RF_BT_OPT_ANT_NUM ;
 void* R21A_ROM_IS_LNA_EXT (int ) ;
 int R21A_ROM_IS_PA_EXT_2GHZ (int ) ;
 int R21A_ROM_IS_PA_EXT_5GHZ (int ) ;
 int R92C_MULTI_BT_FUNC_EN ;
 int R92C_MULTI_FUNC_CTRL ;
 int RTWN_GET_ROM_VAR (int ,int ) ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 int r12a_parse_rom_common (struct rtwn_softc*,int *) ;
 int rtwn_read_4 (struct rtwn_softc*,int ) ;

void
r21a_parse_rom(struct rtwn_softc *sc, uint8_t *buf)
{
 struct r12a_softc *rs = sc->sc_priv;
 struct r12a_rom *rom = (struct r12a_rom *)buf;
 uint8_t pa_type, lna_type_2g, lna_type_5g;


 pa_type = RTWN_GET_ROM_VAR(rom->pa_type, 0);
 lna_type_2g = RTWN_GET_ROM_VAR(rom->lna_type_2g, 0);
 lna_type_5g = RTWN_GET_ROM_VAR(rom->lna_type_5g, 0);

 rs->ext_pa_2g = R21A_ROM_IS_PA_EXT_2GHZ(pa_type);
 rs->ext_pa_5g = R21A_ROM_IS_PA_EXT_5GHZ(pa_type);
 rs->ext_lna_2g = R21A_ROM_IS_LNA_EXT(lna_type_2g);
 rs->ext_lna_5g = R21A_ROM_IS_LNA_EXT(lna_type_5g);

 RTWN_LOCK(sc);
 rs->bt_coex =
     !!(rtwn_read_4(sc, R92C_MULTI_FUNC_CTRL) & R92C_MULTI_BT_FUNC_EN);
 RTWN_UNLOCK(sc);
 rs->bt_ant_num = (rom->rf_bt_opt & R12A_RF_BT_OPT_ANT_NUM);


 IEEE80211_ADDR_COPY(sc->sc_ic.ic_macaddr, rom->macaddr_21a);


 r12a_parse_rom_common(sc, buf);
}
