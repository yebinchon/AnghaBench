
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CTypeMismatchData {int mTypeCheckKind; int mLogAlignment; int mType; int mLocation; } ;


 int ASSERT (struct CTypeMismatchData*) ;
 int HandleTypeMismatch (int,int *,int ,int ,int ,unsigned long) ;

void
__ubsan_handle_type_mismatch(struct CTypeMismatchData *pData, unsigned long ulPointer)
{

 ASSERT(pData);

 HandleTypeMismatch(0, &pData->mLocation, pData->mType, pData->mLogAlignment, pData->mTypeCheckKind, ulPointer);
}
