
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_rxbr {scalar_t__ rxbr_imask; } ;


 int mb () ;
 int vmbus_rxbr_avail (struct vmbus_rxbr*) ;

uint32_t
vmbus_rxbr_intr_unmask(struct vmbus_rxbr *rbr)
{
 rbr->rxbr_imask = 0;
 mb();






 return vmbus_rxbr_avail(rbr);
}
