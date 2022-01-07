
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CTypeMismatchData_v1 {int mTypeCheckKind; int mLogAlignment; int mType; int mLocation; } ;


 int ASSERT (struct CTypeMismatchData_v1*) ;
 int HandleTypeMismatch (int,int *,int ,int ,int ,unsigned long) ;
 int __BIT (int ) ;

void
__ubsan_handle_type_mismatch_v1(struct CTypeMismatchData_v1 *pData, unsigned long ulPointer)
{

 ASSERT(pData);

 HandleTypeMismatch(0, &pData->mLocation, pData->mType, __BIT(pData->mLogAlignment), pData->mTypeCheckKind, ulPointer);
}
