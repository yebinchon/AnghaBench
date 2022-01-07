
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CTypeMismatchData {int mTypeCheckKind; int mLogAlignment; int mType; int mLocation; } ;


 int ASSERT (struct CTypeMismatchData*) ;
 int HandleTypeMismatch (int,int *,int ,int ,int ,unsigned long) ;

void
__ubsan_handle_type_mismatch_abort(struct CTypeMismatchData *pData, unsigned long ulPointer)
{

 ASSERT(pData);

 HandleTypeMismatch(1, &pData->mLocation, pData->mType, pData->mLogAlignment, pData->mTypeCheckKind, ulPointer);
}
