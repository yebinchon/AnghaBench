
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0 ;
 int ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1 ;
 scalar_t__ PBF_REG_COS0_UPPER_BOUND_P0 ;
 scalar_t__ PBF_REG_COS0_UPPER_BOUND_P1 ;
 int REG_WR (struct bxe_softc*,scalar_t__,scalar_t__ const) ;
 scalar_t__ elink_ets_get_credit_upper_bound (scalar_t__ const) ;

__attribute__((used)) static void elink_ets_e3b0_set_credit_upper_bound_pbf(
 const struct elink_params *params,
 const uint32_t min_w_val)
{
 struct bxe_softc *sc = params->sc;
 const uint32_t credit_upper_bound =
     elink_ets_get_credit_upper_bound(min_w_val);
 const uint8_t port = params->port;
 uint32_t base_upper_bound = 0;
 uint8_t max_cos = 0;
 uint8_t i = 0;



 if (!port) {
  base_upper_bound = PBF_REG_COS0_UPPER_BOUND_P0;
  max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0;
 } else {
  base_upper_bound = PBF_REG_COS0_UPPER_BOUND_P1;
  max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1;
 }

 for (i = 0; i < max_cos; i++)
  REG_WR(sc, base_upper_bound + (i << 2), credit_upper_bound);
}
