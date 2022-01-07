
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CInvalidValueData {TYPE_1__* mType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; } ;


 int ASSERT (struct CInvalidValueData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,TYPE_1__*,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleLoadInvalidValue(bool isFatal, struct CInvalidValueData *pData, unsigned long ulValue)
{
 char szLocation[LOCATION_MAXLEN];
 char szValue[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szValue, NUMBER_MAXLEN, pData->mType, ulValue);

 Report(isFatal, "UBSan: Undefined Behavior in %s, load of value %s is not a valid value for type %s\n",
        szLocation, szValue, pData->mType->mTypeName);
}
