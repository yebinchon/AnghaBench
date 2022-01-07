
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CFloatCastOverflowData {int dummy; } ;


 int ASSERT (struct CFloatCastOverflowData*) ;
 int HandleFloatCastOverflow (int,struct CFloatCastOverflowData*,unsigned long) ;

void
__ubsan_handle_float_cast_overflow_abort(struct CFloatCastOverflowData *pData, unsigned long ulFrom)
{

 ASSERT(pData);

 HandleFloatCastOverflow(1, pData, ulFrom);
}
