
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CCFICheckFailData {scalar_t__ mCheckKind; TYPE_1__* mType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; } ;


 int ASSERT (struct CCFICheckFailData*) ;
 scalar_t__ CFI_ICALL ;
 scalar_t__ CFI_VMFCALL ;
 int DeserializeCFICheckKind (scalar_t__) ;
 int DeserializeLocation (char*,int,int *) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,int ,int ,unsigned long,...) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleCFIBadType(bool isFatal, struct CCFICheckFailData *pData, unsigned long ulVtable, bool *bValidVtable, bool *FromUnrecoverableHandler, unsigned long *ProgramCounter, unsigned long *FramePointer)
{
 char szLocation[LOCATION_MAXLEN];






 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 if (pData->mCheckKind == CFI_ICALL || pData->mCheckKind == CFI_VMFCALL) {
  Report(isFatal, "UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx)\n",
        szLocation, pData->mType->mTypeName, DeserializeCFICheckKind(pData->mCheckKind), ulVtable);
 } else {
  Report(isFatal || FromUnrecoverableHandler, "UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx; %s vtable; from %s handler; Program Counter %#lx; Frame Pointer %#lx)\n",
        szLocation, pData->mType->mTypeName, DeserializeCFICheckKind(pData->mCheckKind), ulVtable, *bValidVtable ? "valid" : "invalid", *FromUnrecoverableHandler ? "unrecoverable" : "recoverable", *ProgramCounter, *FramePointer);
 }
}
