
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct i40e_eth_stats {int rx_unknown_protocol; int rx_discards; int tx_errors; scalar_t__ tx_multicast; scalar_t__ rx_multicast; int tx_bytes; int rx_bytes; scalar_t__ tx_broadcast; scalar_t__ tx_unicast; scalar_t__ rx_broadcast; scalar_t__ rx_unicast; int tx_discards; } ;
struct ixl_vsi {struct i40e_eth_stats eth_stats; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;


 int IXL_SET_COLLISIONS (struct ixl_vsi*,int ) ;
 int IXL_SET_IBYTES (struct ixl_vsi*,int ) ;
 int IXL_SET_IMCASTS (struct ixl_vsi*,scalar_t__) ;
 int IXL_SET_IPACKETS (struct ixl_vsi*,scalar_t__) ;
 int IXL_SET_IQDROPS (struct ixl_vsi*,int ) ;
 int IXL_SET_NOPROTO (struct ixl_vsi*,int ) ;
 int IXL_SET_OBYTES (struct ixl_vsi*,int ) ;
 int IXL_SET_OERRORS (struct ixl_vsi*,int ) ;
 int IXL_SET_OMCASTS (struct ixl_vsi*,scalar_t__) ;
 int IXL_SET_OPACKETS (struct ixl_vsi*,scalar_t__) ;
 int IXL_SET_OQDROPS (struct ixl_vsi*,int ) ;

void
iavf_update_stats_counters(struct iavf_sc *sc, struct i40e_eth_stats *es)
{
 struct ixl_vsi *vsi = &sc->vsi;
 uint64_t tx_discards;

 tx_discards = es->tx_discards;


 IXL_SET_IPACKETS(vsi, es->rx_unicast +
                    es->rx_multicast +
      es->rx_broadcast);
 IXL_SET_OPACKETS(vsi, es->tx_unicast +
                    es->tx_multicast +
      es->tx_broadcast);
 IXL_SET_IBYTES(vsi, es->rx_bytes);
 IXL_SET_OBYTES(vsi, es->tx_bytes);
 IXL_SET_IMCASTS(vsi, es->rx_multicast);
 IXL_SET_OMCASTS(vsi, es->tx_multicast);

 IXL_SET_OERRORS(vsi, es->tx_errors);
 IXL_SET_IQDROPS(vsi, es->rx_discards);
 IXL_SET_OQDROPS(vsi, tx_discards);
 IXL_SET_NOPROTO(vsi, es->rx_unknown_protocol);
 IXL_SET_COLLISIONS(vsi, 0);

 vsi->eth_stats = *es;
}
