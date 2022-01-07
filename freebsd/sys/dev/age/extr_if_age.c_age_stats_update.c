
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smb {scalar_t__ updated; int tx_excess_colls; scalar_t__ rx_alignerrs; scalar_t__ rx_desc_oflows; scalar_t__ rx_fifo_oflows; scalar_t__ rx_pkts_truncated; scalar_t__ rx_runts; scalar_t__ rx_lenerrs; scalar_t__ rx_crcerrs; scalar_t__ rx_frames; scalar_t__ tx_pkts_truncated; scalar_t__ tx_underrun; scalar_t__ tx_late_colls; scalar_t__ tx_multi_colls; scalar_t__ tx_single_colls; scalar_t__ tx_frames; scalar_t__ tx_mcast_bytes; scalar_t__ tx_bcast_bytes; scalar_t__ tx_lenerrs; scalar_t__ tx_desc_underrun; scalar_t__ tx_pkts_1519_max; scalar_t__ tx_pkts_1024_1518; scalar_t__ tx_pkts_512_1023; scalar_t__ tx_pkts_256_511; scalar_t__ tx_pkts_128_255; scalar_t__ tx_pkts_65_127; scalar_t__ tx_pkts_64; scalar_t__ tx_bytes; scalar_t__ tx_deferred; scalar_t__ tx_control_frames; scalar_t__ tx_excess_defer; scalar_t__ tx_pause_frames; scalar_t__ tx_mcast_frames; scalar_t__ tx_bcast_frames; scalar_t__ rx_pkts_filtered; scalar_t__ rx_mcast_bytes; scalar_t__ rx_bcast_bytes; scalar_t__ rx_pkts_1519_max; scalar_t__ rx_pkts_1024_1518; scalar_t__ rx_pkts_512_1023; scalar_t__ rx_pkts_256_511; scalar_t__ rx_pkts_128_255; scalar_t__ rx_pkts_65_127; scalar_t__ rx_pkts_64; scalar_t__ rx_fragments; scalar_t__ rx_bytes; scalar_t__ rx_control_frames; scalar_t__ rx_pause_frames; scalar_t__ rx_mcast_frames; scalar_t__ rx_bcast_frames; } ;
struct ifnet {int dummy; } ;
struct age_stats {int tx_excess_colls; int tx_mcast_bytes; int tx_bcast_bytes; int tx_pkts_truncated; int tx_lenerrs; int tx_desc_underrun; int tx_underrun; int tx_late_colls; int tx_multi_colls; int tx_single_colls; int tx_pkts_1519_max; int tx_pkts_1024_1518; int tx_pkts_512_1023; int tx_pkts_256_511; int tx_pkts_128_255; int tx_pkts_65_127; int tx_pkts_64; int tx_bytes; int tx_deferred; int tx_control_frames; int tx_excess_defer; int tx_pause_frames; int tx_mcast_frames; int tx_bcast_frames; int tx_frames; int rx_pkts_filtered; int rx_mcast_bytes; int rx_bcast_bytes; int rx_alignerrs; int rx_desc_oflows; int rx_fifo_oflows; int rx_pkts_truncated; int rx_pkts_1519_max; int rx_pkts_1024_1518; int rx_pkts_512_1023; int rx_pkts_256_511; int rx_pkts_128_255; int rx_pkts_65_127; int rx_pkts_64; int rx_fragments; int rx_runts; int rx_bytes; int rx_lenerrs; int rx_crcerrs; int rx_control_frames; int rx_pause_frames; int rx_mcast_frames; int rx_bcast_frames; int rx_frames; } ;
struct TYPE_3__ {int age_smb_block_map; int age_smb_block_tag; } ;
struct TYPE_4__ {struct smb* age_smb_block; } ;
struct age_softc {TYPE_1__ age_cdata; struct ifnet* age_ifp; TYPE_2__ age_rdata; struct age_stats age_stat; } ;


 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int HDPX_CFG_RETRY_DEFAULT ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int bus_dmamap_sync (int ,int ,int) ;
 int if_inc_counter (struct ifnet*,int ,scalar_t__) ;

__attribute__((used)) static void
age_stats_update(struct age_softc *sc)
{
 struct age_stats *stat;
 struct smb *smb;
 struct ifnet *ifp;

 AGE_LOCK_ASSERT(sc);

 stat = &sc->age_stat;

 bus_dmamap_sync(sc->age_cdata.age_smb_block_tag,
     sc->age_cdata.age_smb_block_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 smb = sc->age_rdata.age_smb_block;
 if (smb->updated == 0)
  return;

 ifp = sc->age_ifp;

 stat->rx_frames += smb->rx_frames;
 stat->rx_bcast_frames += smb->rx_bcast_frames;
 stat->rx_mcast_frames += smb->rx_mcast_frames;
 stat->rx_pause_frames += smb->rx_pause_frames;
 stat->rx_control_frames += smb->rx_control_frames;
 stat->rx_crcerrs += smb->rx_crcerrs;
 stat->rx_lenerrs += smb->rx_lenerrs;
 stat->rx_bytes += smb->rx_bytes;
 stat->rx_runts += smb->rx_runts;
 stat->rx_fragments += smb->rx_fragments;
 stat->rx_pkts_64 += smb->rx_pkts_64;
 stat->rx_pkts_65_127 += smb->rx_pkts_65_127;
 stat->rx_pkts_128_255 += smb->rx_pkts_128_255;
 stat->rx_pkts_256_511 += smb->rx_pkts_256_511;
 stat->rx_pkts_512_1023 += smb->rx_pkts_512_1023;
 stat->rx_pkts_1024_1518 += smb->rx_pkts_1024_1518;
 stat->rx_pkts_1519_max += smb->rx_pkts_1519_max;
 stat->rx_pkts_truncated += smb->rx_pkts_truncated;
 stat->rx_fifo_oflows += smb->rx_fifo_oflows;
 stat->rx_desc_oflows += smb->rx_desc_oflows;
 stat->rx_alignerrs += smb->rx_alignerrs;
 stat->rx_bcast_bytes += smb->rx_bcast_bytes;
 stat->rx_mcast_bytes += smb->rx_mcast_bytes;
 stat->rx_pkts_filtered += smb->rx_pkts_filtered;


 stat->tx_frames += smb->tx_frames;
 stat->tx_bcast_frames += smb->tx_bcast_frames;
 stat->tx_mcast_frames += smb->tx_mcast_frames;
 stat->tx_pause_frames += smb->tx_pause_frames;
 stat->tx_excess_defer += smb->tx_excess_defer;
 stat->tx_control_frames += smb->tx_control_frames;
 stat->tx_deferred += smb->tx_deferred;
 stat->tx_bytes += smb->tx_bytes;
 stat->tx_pkts_64 += smb->tx_pkts_64;
 stat->tx_pkts_65_127 += smb->tx_pkts_65_127;
 stat->tx_pkts_128_255 += smb->tx_pkts_128_255;
 stat->tx_pkts_256_511 += smb->tx_pkts_256_511;
 stat->tx_pkts_512_1023 += smb->tx_pkts_512_1023;
 stat->tx_pkts_1024_1518 += smb->tx_pkts_1024_1518;
 stat->tx_pkts_1519_max += smb->tx_pkts_1519_max;
 stat->tx_single_colls += smb->tx_single_colls;
 stat->tx_multi_colls += smb->tx_multi_colls;
 stat->tx_late_colls += smb->tx_late_colls;
 stat->tx_excess_colls += smb->tx_excess_colls;
 stat->tx_underrun += smb->tx_underrun;
 stat->tx_desc_underrun += smb->tx_desc_underrun;
 stat->tx_lenerrs += smb->tx_lenerrs;
 stat->tx_pkts_truncated += smb->tx_pkts_truncated;
 stat->tx_bcast_bytes += smb->tx_bcast_bytes;
 stat->tx_mcast_bytes += smb->tx_mcast_bytes;


 if_inc_counter(ifp, IFCOUNTER_OPACKETS, smb->tx_frames);

 if_inc_counter(ifp, IFCOUNTER_COLLISIONS, smb->tx_single_colls +
     smb->tx_multi_colls + smb->tx_late_colls +
     smb->tx_excess_colls * HDPX_CFG_RETRY_DEFAULT);

 if_inc_counter(ifp, IFCOUNTER_OERRORS, smb->tx_excess_colls +
     smb->tx_late_colls + smb->tx_underrun +
     smb->tx_pkts_truncated);

 if_inc_counter(ifp, IFCOUNTER_IPACKETS, smb->rx_frames);

 if_inc_counter(ifp, IFCOUNTER_IERRORS, smb->rx_crcerrs +
     smb->rx_lenerrs + smb->rx_runts + smb->rx_pkts_truncated +
     smb->rx_fifo_oflows + smb->rx_desc_oflows +
     smb->rx_alignerrs);


 smb->updated = 0;

 bus_dmamap_sync(sc->age_cdata.age_smb_block_tag,
     sc->age_cdata.age_smb_block_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
