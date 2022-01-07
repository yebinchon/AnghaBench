
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct COverflowData {int dummy; } ;


 int ASSERT (struct COverflowData*) ;
 int HandleNegateOverflow (int,struct COverflowData*,unsigned long) ;

void
__ubsan_handle_negate_overflow(struct COverflowData *pData, unsigned long ulOldValue)
{

 ASSERT(pData);

 HandleNegateOverflow(0, pData, ulOldValue);
}
