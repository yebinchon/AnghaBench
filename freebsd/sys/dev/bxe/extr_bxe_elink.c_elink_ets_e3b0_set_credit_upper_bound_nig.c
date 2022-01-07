
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct elink_params {scalar_t__ port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 ;
 int NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 ;
 int REG_WR (struct bxe_softc*,int ,int const) ;
 int elink_ets_get_credit_upper_bound (int const) ;

__attribute__((used)) static void elink_ets_e3b0_set_credit_upper_bound_nig(
 const struct elink_params *params,
 const uint32_t min_w_val)
{
 struct bxe_softc *sc = params->sc;
 const uint8_t port = params->port;
 const uint32_t credit_upper_bound =
     elink_ets_get_credit_upper_bound(min_w_val);

 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 :
  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, credit_upper_bound);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, credit_upper_bound);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2, credit_upper_bound);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3, credit_upper_bound);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4, credit_upper_bound);
 REG_WR(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 :
     NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5, credit_upper_bound);

 if (!port) {
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6,
   credit_upper_bound);
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7,
   credit_upper_bound);
  REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8,
   credit_upper_bound);
 }
}
