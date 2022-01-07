
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct eth_stats_info {int rxq_size; int txq_size; scalar_t__ promiscuous_mode; int feature_flags; int mtu_size; scalar_t__ mac_local; int version; } ;
struct bxe_softc {int rx_ring_size; int tx_ring_size; int ifp; int mtu; TYPE_3__* sp_objs; TYPE_2__* sp; } ;
struct TYPE_8__ {int (* get_n_elements ) (struct bxe_softc*,TYPE_4__*,int ,scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_7__ {TYPE_4__ mac_obj; } ;
struct TYPE_5__ {struct eth_stats_info ether_stat; } ;
struct TYPE_6__ {TYPE_1__ drv_info_to_mcp; } ;


 int BXE_DRIVER_VERSION ;
 int DRV_INFO_ETH_STAT_NUM_MACS_REQUIRED ;
 int ETH_ALEN ;
 int ETH_STAT_INFO_VERSION_LEN ;
 int FEATURE_ETH_CHKSUM_OFFLOAD_MASK ;
 int FEATURE_ETH_LSO_MASK ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 scalar_t__ MAC_PAD ;
 int if_getcapenable (int ) ;
 int strlcpy (int ,int ,int ) ;
 int stub1 (struct bxe_softc*,TYPE_4__*,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
bxe_drv_info_ether_stat(struct bxe_softc *sc)
{
    struct eth_stats_info *ether_stat =
        &sc->sp->drv_info_to_mcp.ether_stat;

    strlcpy(ether_stat->version, BXE_DRIVER_VERSION,
            ETH_STAT_INFO_VERSION_LEN);


    sc->sp_objs[0].mac_obj.get_n_elements(sc, &sc->sp_objs[0].mac_obj,
                                          DRV_INFO_ETH_STAT_NUM_MACS_REQUIRED,
                                          ether_stat->mac_local + MAC_PAD,
                                          MAC_PAD, ETH_ALEN);

    ether_stat->mtu_size = sc->mtu;

    ether_stat->feature_flags |= FEATURE_ETH_CHKSUM_OFFLOAD_MASK;
    if (if_getcapenable(sc->ifp) & (IFCAP_TSO4 | IFCAP_TSO6)) {
        ether_stat->feature_flags |= FEATURE_ETH_LSO_MASK;
    }



    ether_stat->promiscuous_mode = 0;

    ether_stat->txq_size = sc->tx_ring_size;
    ether_stat->rxq_size = sc->rx_ring_size;
}
