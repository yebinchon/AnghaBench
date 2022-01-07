
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct CShiftOutOfBoundsData {TYPE_1__* mLHSType; TYPE_1__* mRHSType; int mLocation; } ;
struct TYPE_5__ {int mTypeName; } ;


 int ASSERT (struct CShiftOutOfBoundsData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,TYPE_1__*,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*,...) ;
 scalar_t__ isAlreadyReported (int *) ;
 scalar_t__ isNegativeNumber (char*,TYPE_1__*,unsigned long) ;
 scalar_t__ isShiftExponentTooLarge (char*,TYPE_1__*,unsigned long,char*) ;
 char* zDeserializeTypeWidth (TYPE_1__*) ;

__attribute__((used)) static void
HandleShiftOutOfBounds(bool isFatal, struct CShiftOutOfBoundsData *pData, unsigned long ulLHS, unsigned long ulRHS)
{
 char szLocation[LOCATION_MAXLEN];
 char szLHS[NUMBER_MAXLEN];
 char szRHS[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szLHS, NUMBER_MAXLEN, pData->mLHSType, ulLHS);
 DeserializeNumber(szLocation, szRHS, NUMBER_MAXLEN, pData->mRHSType, ulRHS);

 if (isNegativeNumber(szLocation, pData->mRHSType, ulRHS))
  Report(isFatal, "UBSan: Undefined Behavior in %s, shift exponent %s is negative\n",
         szLocation, szRHS);
 else if (isShiftExponentTooLarge(szLocation, pData->mRHSType, ulRHS, zDeserializeTypeWidth(pData->mLHSType)))
  Report(isFatal, "UBSan: Undefined Behavior in %s, shift exponent %s is too large for %zu-bit type %s\n",
         szLocation, szRHS, zDeserializeTypeWidth(pData->mLHSType), pData->mLHSType->mTypeName);
 else if (isNegativeNumber(szLocation, pData->mLHSType, ulLHS))
  Report(isFatal, "UBSan: Undefined Behavior in %s, left shift of negative value %s\n",
         szLocation, szLHS);
 else
  Report(isFatal, "UBSan: Undefined Behavior in %s, left shift of %s by %s places cannot be represented in type %s\n",
         szLocation, szLHS, szRHS, pData->mLHSType->mTypeName);
}
