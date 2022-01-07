
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_hw_stats {int vfmprc; int vfgotc; int vfgorc; int vfgptc; int vfgprc; int last_vfmprc; int last_vfgotc; int last_vfgorc; int last_vfgptc; int last_vfgprc; } ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_2__ {struct ixgbevf_hw_stats vf; } ;
struct adapter {TYPE_1__ stats; struct ixgbe_hw hw; } ;


 int IXGBE_SET_IBYTES (struct adapter*,int ) ;
 int IXGBE_SET_IMCASTS (struct adapter*,int ) ;
 int IXGBE_SET_IPACKETS (struct adapter*,int ) ;
 int IXGBE_SET_OBYTES (struct adapter*,int ) ;
 int IXGBE_SET_OPACKETS (struct adapter*,int ) ;
 int IXGBE_VFGORC_LSB ;
 int IXGBE_VFGORC_MSB ;
 int IXGBE_VFGOTC_LSB ;
 int IXGBE_VFGOTC_MSB ;
 int IXGBE_VFGPRC ;
 int IXGBE_VFGPTC ;
 int IXGBE_VFMPRC ;
 int UPDATE_STAT_32 (int ,int ,int ) ;
 int UPDATE_STAT_36 (int ,int ,int ,int ) ;

void
ixv_update_stats(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbevf_hw_stats *stats = &adapter->stats.vf;

 UPDATE_STAT_32(IXGBE_VFGPRC, adapter->stats.vf.last_vfgprc,
     adapter->stats.vf.vfgprc);
 UPDATE_STAT_32(IXGBE_VFGPTC, adapter->stats.vf.last_vfgptc,
     adapter->stats.vf.vfgptc);
 UPDATE_STAT_36(IXGBE_VFGORC_LSB, IXGBE_VFGORC_MSB,
     adapter->stats.vf.last_vfgorc, adapter->stats.vf.vfgorc);
 UPDATE_STAT_36(IXGBE_VFGOTC_LSB, IXGBE_VFGOTC_MSB,
     adapter->stats.vf.last_vfgotc, adapter->stats.vf.vfgotc);
 UPDATE_STAT_32(IXGBE_VFMPRC, adapter->stats.vf.last_vfmprc,
     adapter->stats.vf.vfmprc);


 IXGBE_SET_IPACKETS(adapter, stats->vfgprc);
 IXGBE_SET_OPACKETS(adapter, stats->vfgptc);
 IXGBE_SET_IBYTES(adapter, stats->vfgorc);
 IXGBE_SET_OBYTES(adapter, stats->vfgotc);
 IXGBE_SET_IMCASTS(adapter, stats->vfmprc);
}
