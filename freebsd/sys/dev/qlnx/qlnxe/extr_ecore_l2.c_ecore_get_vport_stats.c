
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct ecore_eth_stats {int dummy; } ;
struct ecore_dev {scalar_t__ reset_stats; } ;


 int OSAL_MEMSET (struct ecore_eth_stats*,int ,int) ;
 int _ecore_get_vport_stats (struct ecore_dev*,struct ecore_eth_stats*) ;

void ecore_get_vport_stats(struct ecore_dev *p_dev,
      struct ecore_eth_stats *stats)
{
 u32 i;

 if (!p_dev) {
  OSAL_MEMSET(stats, 0, sizeof(*stats));
  return;
 }

 _ecore_get_vport_stats(p_dev, stats);

 if (!p_dev->reset_stats)
  return;


 for (i = 0; i < sizeof(struct ecore_eth_stats) / sizeof(u64); i++)
  ((u64 *)stats)[i] -= ((u64 *)p_dev->reset_stats)[i];
}
