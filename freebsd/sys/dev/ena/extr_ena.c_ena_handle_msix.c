
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_que {int cleanup_task; int cleanup_tq; struct ena_adapter* adapter; } ;
struct ena_adapter {int ifp; } ;
typedef int if_t ;


 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int IFF_DRV_RUNNING ;
 int if_getdrvflags (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_handle_msix(void *arg)
{
 struct ena_que *queue = arg;
 struct ena_adapter *adapter = queue->adapter;
 if_t ifp = adapter->ifp;

 if (unlikely((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0))
  return (FILTER_STRAY);

 taskqueue_enqueue(queue->cleanup_tq, &queue->cleanup_task);

 return (FILTER_HANDLED);
}
