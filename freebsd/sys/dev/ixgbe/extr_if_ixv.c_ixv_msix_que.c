
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_rx_queue {int irqs; int msix; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int FILTER_SCHEDULE_THREAD ;
 int ixv_disable_queue (struct adapter*,int ) ;

__attribute__((used)) static int
ixv_msix_que(void *arg)
{
 struct ix_rx_queue *que = arg;
 struct adapter *adapter = que->adapter;

 ixv_disable_queue(adapter, que->msix);
 ++que->irqs;

 return (FILTER_SCHEDULE_THREAD);
}
