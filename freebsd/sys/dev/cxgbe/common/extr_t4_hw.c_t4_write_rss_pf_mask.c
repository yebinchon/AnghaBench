
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_TP_RSS_PF_MSK ;
 int t4_tp_pio_write (struct adapter*,int *,int,int ,int) ;

void t4_write_rss_pf_mask(struct adapter *adapter, u32 pfmask, bool sleep_ok)
{
 t4_tp_pio_write(adapter, &pfmask, 1, A_TP_RSS_PF_MSK, sleep_ok);
}
