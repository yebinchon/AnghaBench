
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_vars {int dummy; } ;
struct elink_params {scalar_t__ port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB ;
 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7 ;
 int NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8 ;
 int NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB ;
 int NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB ;
 int NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4 ;
 int NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5 ;
 int NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS ;
 int NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB ;
 int NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int elink_ets_e3b0_set_credit_upper_bound_nig (struct elink_params const*,int const) ;
 int elink_ets_get_min_w_val_nig (struct elink_vars const*) ;

__attribute__((used)) static void elink_ets_e3b0_nig_disabled(const struct elink_params *params,
     const struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 const uint8_t port = params->port;
 const uint32_t min_w_val = elink_ets_get_min_w_val_nig(vars);





 if (port) {
  REG_WR(sc, NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_LSB, 0x543210);
  REG_WR(sc, NIG_REG_P1_TX_ARB_PRIORITY_CLIENT2_MSB, 0x0);
 } else {
  REG_WR(sc, NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_LSB, 0x76543210);
  REG_WR(sc, NIG_REG_P0_TX_ARB_PRIORITY_CLIENT2_MSB, 0x8);
 }



 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS :
     NIG_REG_P1_TX_ARB_NUM_STRICT_ARB_SLOTS, 0x100);



 if (port) {

  REG_WR(sc, NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_LSB, 0x210543);
  REG_WR(sc, NIG_REG_P1_TX_ARB_CLIENT_CREDIT_MAP2_MSB, 0x0);
 } else {

  REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_LSB,
         0x43210876);
  REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP2_MSB, 0x5);
 }
 if (port)
  REG_WR(sc, NIG_REG_P1_TX_ARB_CLIENT_IS_STRICT, 0x3f);
 else
  REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, 0x1ff);

 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CLIENT_IS_SUBJECT2WFQ :
     NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, 0);







 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_0 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, 0x0);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_1 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, 0x0);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_2 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_2, 0x0);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_3 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_3, 0x0);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_4 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_4, 0x0);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_WEIGHT_5 :
     NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_5, 0x0);
 if (!port) {
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_6, 0x0);
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_7, 0x0);
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_8, 0x0);
 }

 elink_ets_e3b0_set_credit_upper_bound_nig(params, min_w_val);
}
