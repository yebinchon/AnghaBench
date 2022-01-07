
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vmbus_txbr {scalar_t__ txbr_rindex; scalar_t__ txbr_imask; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int __compiler_membar () ;
 int mb () ;

__attribute__((used)) static __inline boolean_t
vmbus_txbr_need_signal(const struct vmbus_txbr *tbr, uint32_t old_windex)
{
 mb();
 if (tbr->txbr_imask)
  return (FALSE);

 __compiler_membar();





 if (old_windex == tbr->txbr_rindex)
  return (TRUE);

 return (FALSE);
}
