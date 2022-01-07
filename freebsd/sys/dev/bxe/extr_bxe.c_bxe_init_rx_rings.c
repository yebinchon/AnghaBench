
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct TYPE_2__ {int paddr; } ;
struct bxe_fastpath {TYPE_1__ rcq_dma; int rx_sge_prod; int rx_cq_prod; int rx_bd_prod; scalar_t__ rx_bd_cons; } ;


 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ CHIP_IS_E1 (struct bxe_softc*) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int SC_FUNC (struct bxe_softc*) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 scalar_t__ USTORM_MEM_WORKAROUND_ADDRESS_OFFSET (int ) ;
 int bxe_update_rx_prod (struct bxe_softc*,struct bxe_fastpath*,int ,int ,int ) ;

__attribute__((used)) static void
bxe_init_rx_rings(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

        fp->rx_bd_cons = 0;






        bxe_update_rx_prod(sc, fp,
                           fp->rx_bd_prod,
                           fp->rx_cq_prod,
                           fp->rx_sge_prod);

        if (i != 0) {
            continue;
        }

        if (CHIP_IS_E1(sc)) {
            REG_WR(sc,
                   (BAR_USTRORM_INTMEM +
                    USTORM_MEM_WORKAROUND_ADDRESS_OFFSET(SC_FUNC(sc))),
                   U64_LO(fp->rcq_dma.paddr));
            REG_WR(sc,
                   (BAR_USTRORM_INTMEM +
                    USTORM_MEM_WORKAROUND_ADDRESS_OFFSET(SC_FUNC(sc)) + 4),
                   U64_HI(fp->rcq_dma.paddr));
        }
    }
}
