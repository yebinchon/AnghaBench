
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int MCP_REG_MCPR_GP_INPUTS ;
 int MCP_REG_MCPR_GP_OENABLE ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;

__attribute__((used)) static void elink_get_epio(struct bxe_softc *sc, uint32_t epio_pin, uint32_t *en)
{
 uint32_t epio_mask, gp_oenable;
 *en = 0;

 if (epio_pin > 31) {
  ELINK_DEBUG_P1(sc, "Invalid EPIO pin %d to get\n", epio_pin);
  return;
 }

 epio_mask = 1 << epio_pin;

 gp_oenable = REG_RD(sc, MCP_REG_MCPR_GP_OENABLE);
 REG_WR(sc, MCP_REG_MCPR_GP_OENABLE, gp_oenable & ~epio_mask);

 *en = (REG_RD(sc, MCP_REG_MCPR_GP_INPUTS) & epio_mask) >> epio_pin;
}
