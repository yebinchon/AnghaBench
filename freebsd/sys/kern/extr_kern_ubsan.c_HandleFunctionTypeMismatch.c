
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CFunctionTypeMismatchData {TYPE_1__* mType; int mLocation; } ;
struct TYPE_2__ {int mTypeName; } ;


 int ASSERT (struct CFunctionTypeMismatchData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,unsigned long,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleFunctionTypeMismatch(bool isFatal, struct CFunctionTypeMismatchData *pData, unsigned long ulFunction)
{
 char szLocation[LOCATION_MAXLEN];
 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 Report(isFatal, "UBSan: Undefined Behavior in %s, call to function %#lx through pointer to incorrect function type %s\n",
       szLocation, ulFunction, pData->mType->mTypeName);
}
