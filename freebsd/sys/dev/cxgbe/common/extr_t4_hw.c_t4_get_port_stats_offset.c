
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct port_stats {int dummy; } ;
struct adapter {int dummy; } ;


 int t4_get_port_stats (struct adapter*,int,struct port_stats*) ;

void t4_get_port_stats_offset(struct adapter *adap, int idx,
  struct port_stats *stats,
  struct port_stats *offset)
{
 u64 *s, *o;
 int i;

 t4_get_port_stats(adap, idx, stats);
 for (i = 0, s = (u64 *)stats, o = (u64 *)offset ;
   i < (sizeof(struct port_stats)/sizeof(u64)) ;
   i++, s++, o++)
  *s -= *o;
}
