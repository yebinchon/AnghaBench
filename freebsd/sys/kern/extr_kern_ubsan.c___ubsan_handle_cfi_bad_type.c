
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CCFICheckFailData {int dummy; } ;


 int ASSERT (struct CCFICheckFailData*) ;
 int HandleCFIBadType (int,struct CCFICheckFailData*,unsigned long,int*,int*,unsigned long*,unsigned long*) ;

void
__ubsan_handle_cfi_bad_type(struct CCFICheckFailData *pData, unsigned long ulVtable, bool bValidVtable, bool FromUnrecoverableHandler, unsigned long ProgramCounter, unsigned long FramePointer)
{

 ASSERT(pData);

 HandleCFIBadType(0, pData, ulVtable, &bValidVtable, &FromUnrecoverableHandler, &ProgramCounter, &FramePointer);
}
