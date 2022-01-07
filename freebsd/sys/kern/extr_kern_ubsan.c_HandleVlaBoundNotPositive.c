
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CVLABoundData {int mType; int mLocation; } ;


 int ASSERT (struct CVLABoundData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,int ,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleVlaBoundNotPositive(bool isFatal, struct CVLABoundData *pData, unsigned long ulBound)
{
 char szLocation[LOCATION_MAXLEN];
 char szBound[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szBound, NUMBER_MAXLEN, pData->mType, ulBound);

 Report(isFatal, "UBSan: Undefined Behavior in %s, variable length array bound value %s <= 0\n",
        szLocation, szBound);
}
