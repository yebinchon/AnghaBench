
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_rx_queue {int irqs; } ;


 int FILTER_SCHEDULE_THREAD ;

__attribute__((used)) static int
em_msix_que(void *arg)
{
 struct em_rx_queue *que = arg;

 ++que->irqs;

 return (FILTER_SCHEDULE_THREAD);
}
