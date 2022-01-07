
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 scalar_t__ A_TP_RSS_PF0_CONFIG ;
 int t4_tp_pio_read (struct adapter*,int *,int,scalar_t__,int) ;

void t4_read_rss_pf_config(struct adapter *adapter, unsigned int index,
      u32 *valp, bool sleep_ok)
{
 t4_tp_pio_read(adapter, valp, 1, A_TP_RSS_PF0_CONFIG + index, sleep_ok);
}
