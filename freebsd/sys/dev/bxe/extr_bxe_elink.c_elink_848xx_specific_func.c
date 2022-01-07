
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_phy {int dummy; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_NIG_LATCH_BC_ENABLE_MI_INT ;

 int NIG_REG_LATCH_BC_0 ;
 int elink_848xx_set_led (struct bxe_softc*,struct elink_phy*) ;
 int elink_bits_en (struct bxe_softc*,int ,int) ;
 int elink_is_8483x_8485x (struct elink_phy*) ;
 int elink_save_848xx_spirom_version (struct elink_phy*,struct bxe_softc*,int) ;

__attribute__((used)) static void elink_848xx_specific_func(struct elink_phy *phy,
          struct elink_params *params,
          uint32_t action)
{
 struct bxe_softc *sc = params->sc;
 switch (action) {
 case 128:
  if (!elink_is_8483x_8485x(phy)) {

   elink_save_848xx_spirom_version(phy, sc, params->port);
  }




  elink_bits_en(sc, NIG_REG_LATCH_BC_0 + params->port*4,
         1 << ELINK_NIG_LATCH_BC_ENABLE_MI_INT);

  elink_848xx_set_led(sc, phy);
  break;
 }
}
