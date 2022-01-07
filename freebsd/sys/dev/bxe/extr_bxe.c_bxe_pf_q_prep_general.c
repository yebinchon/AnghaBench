
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ecore_general_setup_params {int cos; int mtu; int spcl_id; int stat_id; } ;
struct bxe_softc {int mtu; } ;
struct bxe_fastpath {int cl_id; } ;


 int bxe_stats_id (struct bxe_fastpath*) ;

__attribute__((used)) static void
bxe_pf_q_prep_general(struct bxe_softc *sc,
                      struct bxe_fastpath *fp,
                      struct ecore_general_setup_params *gen_init,
                      uint8_t cos)
{
    gen_init->stat_id = bxe_stats_id(fp);
    gen_init->spcl_id = fp->cl_id;
    gen_init->mtu = sc->mtu;
    gen_init->cos = cos;
}
