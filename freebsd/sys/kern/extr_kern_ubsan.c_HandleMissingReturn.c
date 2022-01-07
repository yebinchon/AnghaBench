
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CUnreachableData {int mLocation; } ;


 int ASSERT (struct CUnreachableData*) ;
 int DeserializeLocation (char*,int,int *) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleMissingReturn(bool isFatal, struct CUnreachableData *pData)
{
 char szLocation[LOCATION_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 Report(isFatal, "UBSan: Undefined Behavior in %s, execution reached the end of a value-returning function without returning a value\n",
        szLocation);
}
