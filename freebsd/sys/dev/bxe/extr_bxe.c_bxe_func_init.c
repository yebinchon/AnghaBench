
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tstorm_eth_function_common_config {int member_0; } ;
struct bxe_softc {int dummy; } ;
struct bxe_func_init_params {int func_flgs; int spq_prod; int func_id; int spq_map; int pf_id; } ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int FUNC_FLG_SPQ ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 scalar_t__ XSEM_REG_FAST_MEMORY ;
 scalar_t__ XSTORM_SPQ_PROD_OFFSET (int ) ;
 int storm_memset_func_cfg (struct bxe_softc*,struct tstorm_eth_function_common_config*,int ) ;
 int storm_memset_func_en (struct bxe_softc*,int ,int) ;
 int storm_memset_spq_addr (struct bxe_softc*,int ,int ) ;
 int storm_memset_vf_to_pf (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_func_init(struct bxe_softc *sc,
              struct bxe_func_init_params *p)
{
    struct tstorm_eth_function_common_config tcfg = { 0 };

    if (CHIP_IS_E1x(sc)) {
        storm_memset_func_cfg(sc, &tcfg, p->func_id);
    }


    storm_memset_vf_to_pf(sc, p->func_id, p->pf_id);
    storm_memset_func_en(sc, p->func_id, 1);


    if (p->func_flgs & FUNC_FLG_SPQ) {
        storm_memset_spq_addr(sc, p->spq_map, p->func_id);
        REG_WR(sc,
               (XSEM_REG_FAST_MEMORY + XSTORM_SPQ_PROD_OFFSET(p->func_id)),
               p->spq_prod);
    }
}
