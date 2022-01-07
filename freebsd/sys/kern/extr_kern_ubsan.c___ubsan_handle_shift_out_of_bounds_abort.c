
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CShiftOutOfBoundsData {int dummy; } ;


 int ASSERT (struct CShiftOutOfBoundsData*) ;
 int HandleShiftOutOfBounds (int,struct CShiftOutOfBoundsData*,unsigned long,unsigned long) ;

void
__ubsan_handle_shift_out_of_bounds_abort(struct CShiftOutOfBoundsData *pData, unsigned long ulLHS, unsigned long ulRHS)
{

 ASSERT(pData);

 HandleShiftOutOfBounds(1, pData, ulLHS, ulRHS);
}
