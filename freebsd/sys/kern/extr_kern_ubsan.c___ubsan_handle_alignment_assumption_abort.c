
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CAlignmentAssumptionData {int dummy; } ;


 int ASSERT (struct CAlignmentAssumptionData*) ;
 int HandleAlignmentAssumption (int,struct CAlignmentAssumptionData*,unsigned long,unsigned long,unsigned long) ;

void
__ubsan_handle_alignment_assumption_abort(struct CAlignmentAssumptionData *pData, unsigned long ulPointer, unsigned long ulAlignment, unsigned long ulOffset)
{

 ASSERT(pData);

 HandleAlignmentAssumption(1, pData, ulPointer, ulAlignment, ulOffset);
}
