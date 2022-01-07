
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct COverflowData {int dummy; } ;


 int ASSERT (struct COverflowData*) ;
 int HandleOverflow (int,struct COverflowData*,unsigned long,unsigned long,int ) ;
 int MUL_STRING ;

void
__ubsan_handle_mul_overflow(struct COverflowData *pData, unsigned long ulLHS, unsigned long ulRHS)
{

 ASSERT(pData);

 HandleOverflow(0, pData, ulLHS, ulRHS, MUL_STRING);
}
