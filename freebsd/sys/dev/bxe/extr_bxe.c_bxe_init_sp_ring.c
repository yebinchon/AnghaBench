
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {scalar_t__ spq_prod_bd; scalar_t__ spq_last_bd; scalar_t__ spq; TYPE_2__* def_sb; int * dsb_sp_prod; scalar_t__ spq_prod_idx; int cq_spq_left; } ;
struct TYPE_3__ {int * index_values; } ;
struct TYPE_4__ {TYPE_1__ sp_sb; } ;


 size_t HC_SP_INDEX_ETH_DEF_CONS ;
 int MAX_SPQ_PENDING ;
 scalar_t__ MAX_SP_DESC_CNT ;
 int atomic_store_rel_long (int *,int ) ;

__attribute__((used)) static void
bxe_init_sp_ring(struct bxe_softc *sc)
{
    atomic_store_rel_long(&sc->cq_spq_left, MAX_SPQ_PENDING);
    sc->spq_prod_idx = 0;
    sc->dsb_sp_prod = &sc->def_sb->sp_sb.index_values[HC_SP_INDEX_ETH_DEF_CONS];
    sc->spq_prod_bd = sc->spq;
    sc->spq_last_bd = (sc->spq_prod_bd + MAX_SP_DESC_CNT);
}
