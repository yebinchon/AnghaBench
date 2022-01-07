
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND ;
 int NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT ;
 int NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ;
 int NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ;
 int PBF_REG_COS0_UPPER_BOUND ;
 int PBF_REG_COS1_UPPER_BOUND ;
 int PBF_REG_ETS_ENABLED ;
 int PBF_REG_NUM_STRICT_ARB_SLOTS ;
 int REG_WR (struct bxe_softc*,int ,int) ;

__attribute__((used)) static void elink_ets_bw_limit_common(const struct elink_params *params)
{

 struct bxe_softc *sc = params->sc;
 ELINK_DEBUG_P0(sc, "ETS enabled BW limit configuration\n");




 REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_IS_SUBJECT2WFQ, 0x18);






 REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_CREDIT_MAP, 0x111A);

 REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0,
        ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
 REG_WR(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1,
        ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND);


 REG_WR(sc, PBF_REG_ETS_ENABLED, 1);


 REG_WR(sc, PBF_REG_NUM_STRICT_ARB_SLOTS, 0);







 REG_WR(sc, NIG_REG_P0_TX_ARB_CLIENT_IS_STRICT, 0x7);


 REG_WR(sc, PBF_REG_COS0_UPPER_BOUND,
        ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
 REG_WR(sc, PBF_REG_COS1_UPPER_BOUND,
        ELINK_ETS_BW_LIMIT_CREDIT_UPPER_BOUND);
}
