
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* uint16_t ;
struct ustorm_eth_rx_producers {void* sge_prod; void* cqe_prod; void* bd_prod; int member_0; } ;
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {int index; scalar_t__ ustorm_rx_prods_offset; } ;
typedef int rx_prods ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,void*,void*,void*) ;
 int DBG_RX ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int wmb () ;

__attribute__((used)) static inline void
bxe_update_rx_prod(struct bxe_softc *sc,
                   struct bxe_fastpath *fp,
                   uint16_t rx_bd_prod,
                   uint16_t rx_cq_prod,
                   uint16_t rx_sge_prod)
{
    struct ustorm_eth_rx_producers rx_prods = { 0 };
    uint32_t i;


    rx_prods.bd_prod = rx_bd_prod;
    rx_prods.cqe_prod = rx_cq_prod;
    rx_prods.sge_prod = rx_sge_prod;
    wmb();

    for (i = 0; i < (sizeof(rx_prods) / 4); i++) {
        REG_WR(sc,
               (fp->ustorm_rx_prods_offset + (i * 4)),
               ((uint32_t *)&rx_prods)[i]);
    }

    wmb();

    BLOGD(sc, DBG_RX,
          "RX fp[%d]: wrote prods bd_prod=%u cqe_prod=%u sge_prod=%u\n",
          fp->index, rx_bd_prod, rx_cq_prod, rx_sge_prod);
}
