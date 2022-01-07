
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ pmf; } ;
struct TYPE_5__ {int udp_rss_v4; int udp_rss_v6; scalar_t__* ind_table; } ;
struct bxe_softc {TYPE_1__ port; TYPE_2__ rss_conf_obj; scalar_t__ udp_rss; TYPE_3__* fp; } ;
struct TYPE_6__ {scalar_t__ cl_id; } ;


 int BXE_NUM_ETH_QUEUES (struct bxe_softc*) ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 int bxe_config_rss_eth (struct bxe_softc*,int) ;

__attribute__((used)) static int
bxe_init_rss_pf(struct bxe_softc *sc)
{
    uint8_t num_eth_queues = BXE_NUM_ETH_QUEUES(sc);
    int i;





    for (i = 0; i < sizeof(sc->rss_conf_obj.ind_table); i++) {
        sc->rss_conf_obj.ind_table[i] =
            (sc->fp->cl_id + (i % num_eth_queues));
    }

    if (sc->udp_rss) {
        sc->rss_conf_obj.udp_rss_v4 = sc->rss_conf_obj.udp_rss_v6 = 1;
    }
    return (bxe_config_rss_eth(sc, sc->port.pmf || !CHIP_IS_E1x(sc)));
}
