
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mFilename; } ;
struct CAlignmentAssumptionData {TYPE_1__ mAssumptionLocation; TYPE_1__ mLocation; } ;


 int ASSERT (struct CAlignmentAssumptionData*) ;
 int DeserializeLocation (char*,int,TYPE_1__*) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,unsigned long,unsigned long,unsigned long,...) ;
 scalar_t__ isAlreadyReported (TYPE_1__*) ;

__attribute__((used)) static void
HandleAlignmentAssumption(bool isFatal, struct CAlignmentAssumptionData *pData, unsigned long ulPointer, unsigned long ulAlignment, unsigned long ulOffset)
{
 char szLocation[LOCATION_MAXLEN];
 char szAssumptionLocation[LOCATION_MAXLEN];
 unsigned long ulRealPointer;

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 ulRealPointer = ulPointer - ulOffset;

 if (pData->mAssumptionLocation.mFilename != ((void*)0)) {
  DeserializeLocation(szAssumptionLocation, LOCATION_MAXLEN,
      &pData->mAssumptionLocation);
  Report(isFatal, "UBSan: Undefined Behavior in %s, alignment assumption of %#lx for pointer %#lx (offset %#lx), asumption made in %s\n",
      szLocation, ulAlignment, ulRealPointer, ulOffset,
      szAssumptionLocation);
 } else {
  Report(isFatal, "UBSan: Undefined Behavior in %s, alignment assumption of %#lx for pointer %#lx (offset %#lx)\n",
      szLocation, ulAlignment, ulRealPointer, ulOffset);
 }
}
