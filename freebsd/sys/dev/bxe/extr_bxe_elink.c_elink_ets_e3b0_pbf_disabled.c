
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
 scalar_t__ ELINK_ETS_E3B0_PBF_MIN_W_VAL ;
 scalar_t__ PBF_REG_COS0_WEIGHT_P0 ;
 scalar_t__ PBF_REG_COS0_WEIGHT_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 ;
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 ;
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_ets_e3b0_set_credit_upper_bound_pbf (struct elink_params const*,scalar_t__ const) ;

__attribute__((used)) static void elink_ets_e3b0_pbf_disabled(const struct elink_params *params)
{
 struct bxe_softc *sc = params->sc;
 const uint8_t port = params->port;
 const uint32_t min_w_val_pbf = ELINK_ETS_E3B0_PBF_MIN_W_VAL;
 uint8_t i = 0;
 uint32_t base_weight = 0;
 uint8_t max_cos = 0;





 if (port)

  REG_WR(sc, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 , 0x688);
 else

  REG_WR(sc, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 , 0x2C688);


 if (port)

  REG_WR(sc, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1, 0x688);
 else

 REG_WR(sc, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0, 0x2C688);

 REG_WR(sc, (port) ? PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 :
     PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 , 0x100);


 REG_WR(sc, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 :
     PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 , 0);

 REG_WR(sc, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 :
     PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 , 0);



 if (!port) {
  base_weight = PBF_REG_COS0_WEIGHT_P0;
  max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0;
 } else {
  base_weight = PBF_REG_COS0_WEIGHT_P1;
  max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1;
 }

 for (i = 0; i < max_cos; i++)
  REG_WR(sc, base_weight + (0x4 * i), 0);

 elink_ets_e3b0_set_credit_upper_bound_pbf(params, min_w_val_pbf);
}
