
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_rx_queue {int irqs; } ;


 int FILTER_SCHEDULE_THREAD ;
 int ixl_set_queue_rx_itr (struct ixl_rx_queue*) ;

int
ixl_msix_que(void *arg)
{
 struct ixl_rx_queue *rx_que = arg;

 ++rx_que->irqs;

 ixl_set_queue_rx_itr(rx_que);


 return (FILTER_SCHEDULE_THREAD);
}
