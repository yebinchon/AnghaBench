
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_idma_monitor_state {int idma_1s_thresh; scalar_t__* idma_stalled; } ;
struct adapter {int dummy; } ;


 int core_ticks_per_usec (struct adapter*) ;

void t4_idma_monitor_init(struct adapter *adapter,
     struct sge_idma_monitor_state *idma)
{
 idma->idma_1s_thresh = core_ticks_per_usec(adapter) * 1000000;
 idma->idma_stalled[0] = idma->idma_stalled[1] = 0;
}
