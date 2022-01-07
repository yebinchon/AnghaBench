
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct nicvf_hw_stats {int rx_mcast_frames; int tx_bytes_ok; int rx_bytes; } ;
struct nicvf_drv_stats {int tx_drops; int rx_drops; int tx_frames_ok; int rx_frames_ok; } ;
struct nicvf {struct nicvf_drv_stats drv_stats; struct nicvf_hw_stats hw_stats; } ;
struct ifnet {int dummy; } ;
typedef int ift_counter ;
 int if_get_counter_default (struct ifnet*,int) ;
 struct nicvf* if_getsoftc (struct ifnet*) ;

__attribute__((used)) static uint64_t
nicvf_if_getcounter(struct ifnet *ifp, ift_counter cnt)
{
 struct nicvf *nic;
 struct nicvf_hw_stats *hw_stats;
 struct nicvf_drv_stats *drv_stats;

 nic = if_getsoftc(ifp);
 hw_stats = &nic->hw_stats;
 drv_stats = &nic->drv_stats;

 switch (cnt) {
 case 132:
  return (drv_stats->rx_frames_ok);
 case 129:
  return (drv_stats->tx_frames_ok);
 case 134:
  return (hw_stats->rx_bytes);
 case 130:
  return (hw_stats->tx_bytes_ok);
 case 133:
  return (hw_stats->rx_mcast_frames);
 case 135:
  return (0);
 case 131:
  return (drv_stats->rx_drops);
 case 128:
  return (drv_stats->tx_drops);
 default:
  return (if_get_counter_default(ifp, cnt));
 }

}
