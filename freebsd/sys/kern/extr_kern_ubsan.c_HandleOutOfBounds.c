
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct COutOfBoundsData {TYPE_1__* mArrayType; int mIndexType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; } ;


 int ASSERT (struct COutOfBoundsData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,int ,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleOutOfBounds(bool isFatal, struct COutOfBoundsData *pData, unsigned long ulIndex)
{
 char szLocation[LOCATION_MAXLEN];
 char szIndex[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szIndex, NUMBER_MAXLEN, pData->mIndexType, ulIndex);

 Report(isFatal, "UBSan: Undefined Behavior in %s, index %s is out of range for type %s\n",
        szLocation, szIndex, pData->mArrayType->mTypeName);
}
