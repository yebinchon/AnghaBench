
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int GRCBASE_UMAC0 ;
 int GRCBASE_UMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ;
 int MISC_REG_RESET_REG_2 ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int UMAC_COMMAND_CONFIG_REG_RX_ENA ;
 int UMAC_COMMAND_CONFIG_REG_TX_ENA ;
 int UMAC_REG_COMMAND_CONFIG ;

__attribute__((used)) static void elink_set_umac_rxtx(struct elink_params *params, uint8_t en)
{
 uint32_t umac_base = params->port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
 uint32_t val;
 struct bxe_softc *sc = params->sc;
 if (!(REG_RD(sc, MISC_REG_RESET_REG_2) &
     (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port)))
  return;
 val = REG_RD(sc, umac_base + UMAC_REG_COMMAND_CONFIG);
 if (en)
  val |= (UMAC_COMMAND_CONFIG_REG_TX_ENA |
   UMAC_COMMAND_CONFIG_REG_RX_ENA);
 else
  val &= ~(UMAC_COMMAND_CONFIG_REG_TX_ENA |
    UMAC_COMMAND_CONFIG_REG_RX_ENA);

 REG_WR(sc, umac_base + UMAC_REG_COMMAND_CONFIG, val);
}
