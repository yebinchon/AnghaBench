
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_adapter {int dummy; } ;
typedef enum txrx { ____Placeholder_txrx } txrx ;
struct TYPE_3__ {scalar_t__ nkr_stopped; } ;


 TYPE_1__** NMR (struct netmap_adapter*,int) ;
 int netmap_disable_ring (TYPE_1__*,int) ;

void
netmap_set_ring(struct netmap_adapter *na, u_int ring_id, enum txrx t, int stopped)
{
 if (stopped)
  netmap_disable_ring(NMR(na, t)[ring_id], stopped);
 else
  NMR(na, t)[ring_id]->nkr_stopped = 0;
}
