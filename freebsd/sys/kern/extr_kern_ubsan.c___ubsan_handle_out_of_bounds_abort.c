
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct COutOfBoundsData {int dummy; } ;


 int ASSERT (struct COutOfBoundsData*) ;
 int HandleOutOfBounds (int,struct COutOfBoundsData*,unsigned long) ;

void
__ubsan_handle_out_of_bounds_abort(struct COutOfBoundsData *pData, unsigned long ulIndex)
{

 ASSERT(pData);

 HandleOutOfBounds(1, pData, ulIndex);
}
