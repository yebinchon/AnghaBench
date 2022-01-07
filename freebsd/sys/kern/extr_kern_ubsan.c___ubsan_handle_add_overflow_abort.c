
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct COverflowData {int dummy; } ;


 int ASSERT (struct COverflowData*) ;
 int HandleOverflow (int,struct COverflowData*,unsigned long,unsigned long,int ) ;
 int PLUS_STRING ;

void
__ubsan_handle_add_overflow_abort(struct COverflowData *pData, unsigned long ulLHS, unsigned long ulRHS)
{

 ASSERT(pData);

 HandleOverflow(1, pData, ulLHS, ulRHS, PLUS_STRING);
}
