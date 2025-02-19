
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int pm_stats_cnt; } ;


 int A_PM_RX_DBG_CTRL ;
 int A_PM_RX_DBG_DATA ;
 int A_PM_RX_DBG_STAT_MSB ;
 int A_PM_RX_STAT_CONFIG ;
 int A_PM_RX_STAT_COUNT ;
 int A_PM_RX_STAT_LSB ;
 scalar_t__ is_t4 (struct adapter*) ;
 int t4_read_indirect (struct adapter*,int ,int ,int*,int,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_read_reg64 (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_pmrx_get_stats(struct adapter *adap, u32 cnt[], u64 cycles[])
{
 int i;
 u32 data[2];

 for (i = 0; i < adap->chip_params->pm_stats_cnt; i++) {
  t4_write_reg(adap, A_PM_RX_STAT_CONFIG, i + 1);
  cnt[i] = t4_read_reg(adap, A_PM_RX_STAT_COUNT);
  if (is_t4(adap)) {
   cycles[i] = t4_read_reg64(adap, A_PM_RX_STAT_LSB);
  } else {
   t4_read_indirect(adap, A_PM_RX_DBG_CTRL,
      A_PM_RX_DBG_DATA, data, 2,
      A_PM_RX_DBG_STAT_MSB);
   cycles[i] = (((u64)data[0] << 32) | data[1]);
  }
 }
}
