
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct COverflowData {TYPE_1__* mType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; int mTypeInfo; } ;


 int ASSERT (struct COverflowData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int DeserializeNumber (char*,char*,int,TYPE_1__*,unsigned long) ;
 scalar_t__ ISSET (int ,int ) ;
 int LOCATION_MAXLEN ;
 int NUMBER_MAXLEN ;
 int NUMBER_SIGNED_BIT ;
 int Report (int,char*,char*,char*,char*,char const*,char*,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleOverflow(bool isFatal, struct COverflowData *pData, unsigned long ulLHS, unsigned long ulRHS, const char *szOperation)
{
 char szLocation[LOCATION_MAXLEN];
 char szLHS[NUMBER_MAXLEN];
 char szRHS[NUMBER_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 DeserializeNumber(szLocation, szLHS, NUMBER_MAXLEN, pData->mType, ulLHS);
 DeserializeNumber(szLocation, szRHS, NUMBER_MAXLEN, pData->mType, ulRHS);

 Report(isFatal, "UBSan: Undefined Behavior in %s, %s integer overflow: %s %s %s cannot be represented in type %s\n",
        szLocation, ISSET(pData->mType->mTypeInfo, NUMBER_SIGNED_BIT) ? "signed" : "unsigned", szLHS, szOperation, szRHS, pData->mType->mTypeName);
}
