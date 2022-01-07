
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct COverflowData {TYPE_1__* mType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; } ;


 int ASSERT (struct COverflowData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,TYPE_1__*,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleNegateOverflow(bool isFatal, struct COverflowData *pData, unsigned long ulOldValue)
{
 char szLocation[LOCATION_MAXLEN];
 char szOldValue[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szOldValue, NUMBER_MAXLEN, pData->mType, ulOldValue);

 Report(isFatal, "UBSan: Undefined Behavior in %s, negation of %s cannot be represented in type %s\n",
        szLocation, szOldValue, pData->mType->mTypeName);
}
