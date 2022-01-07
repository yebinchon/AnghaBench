
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int CHIP_IS_E1 (struct bxe_softc*) ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ;
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK_MF ;
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ;
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

void elink_set_rx_filter(struct elink_params *params, uint8_t en)
{
 struct bxe_softc *sc = params->sc;
 uint8_t val = en * 0x1F;


 if (!CHIP_IS_E1x(sc))
  val |= en * 0x20;
 REG_WR(sc, NIG_REG_LLH0_BRB1_DRV_MASK + params->port*4, val);

 if (!CHIP_IS_E1(sc)) {
  REG_WR(sc, NIG_REG_LLH0_BRB1_DRV_MASK_MF + params->port*4,
         en*0x3);
 }

 REG_WR(sc, (params->port ? NIG_REG_LLH1_BRB1_NOT_MCP :
      NIG_REG_LLH0_BRB1_NOT_MCP), en);
}
