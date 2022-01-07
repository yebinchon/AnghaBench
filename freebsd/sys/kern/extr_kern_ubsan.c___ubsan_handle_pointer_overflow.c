
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CPointerOverflowData {int dummy; } ;


 int ASSERT (struct CPointerOverflowData*) ;
 int HandlePointerOverflow (int,struct CPointerOverflowData*,unsigned long,unsigned long) ;

void
__ubsan_handle_pointer_overflow(struct CPointerOverflowData *pData, unsigned long ulBase, unsigned long ulResult)
{

 ASSERT(pData);

 HandlePointerOverflow(0, pData, ulBase, ulResult);
}
