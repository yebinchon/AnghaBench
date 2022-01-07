
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CPointerOverflowData {int mLocation; } ;


 int ASSERT (struct CPointerOverflowData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,unsigned long,unsigned long) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandlePointerOverflow(bool isFatal, struct CPointerOverflowData *pData, unsigned long ulBase, unsigned long ulResult)
{
 char szLocation[LOCATION_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 Report(isFatal, "UBSan: Undefined Behavior in %s, pointer expression with base %#lx overflowed to %#lx\n",
        szLocation, ulBase, ulResult);
}
