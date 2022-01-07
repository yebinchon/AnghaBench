
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CVLABoundData {int dummy; } ;


 int ASSERT (struct CVLABoundData*) ;
 int HandleVlaBoundNotPositive (int,struct CVLABoundData*,unsigned long) ;

void
__ubsan_handle_vla_bound_not_positive(struct CVLABoundData *pData, unsigned long ulBound)
{

 ASSERT(pData);

 HandleVlaBoundNotPositive(0, pData, ulBound);
}
