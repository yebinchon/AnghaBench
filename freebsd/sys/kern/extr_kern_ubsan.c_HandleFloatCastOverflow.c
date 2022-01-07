
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct CFloatCastOverflowData {TYPE_1__* mToType; TYPE_2__* mFromType; int mLocation; } ;
struct TYPE_4__ {int mTypeName; } ;
struct TYPE_3__ {int mTypeName; } ;


 int ASSERT (struct CFloatCastOverflowData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,TYPE_2__*,unsigned long) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int Report (int,char*,char*,char*,int ,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleFloatCastOverflow(bool isFatal, struct CFloatCastOverflowData *pData, unsigned long ulFrom)
{
 char szLocation[LOCATION_MAXLEN];
 char szFrom[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szFrom, NUMBER_MAXLEN, pData->mFromType, ulFrom);

 Report(isFatal, "UBSan: Undefined Behavior in %s, %s (of type %s) is outside the range of representable values of type %s\n",
        szLocation, szFrom, pData->mFromType->mTypeName, pData->mToType->mTypeName);
}
