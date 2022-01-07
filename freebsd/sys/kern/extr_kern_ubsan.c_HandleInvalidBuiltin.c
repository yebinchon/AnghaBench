
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CInvalidBuiltinData {int mKind; int mLocation; } ;


 int ASSERT (struct CInvalidBuiltinData*) ;
 int DeserializeBuiltinCheckKind (int ) ;
 int DeserializeLocation (char*,int,int *) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,int ) ;
 scalar_t__ isAlreadyReported (int *) ;

__attribute__((used)) static void
HandleInvalidBuiltin(bool isFatal, struct CInvalidBuiltinData *pData)
{
 char szLocation[LOCATION_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);

 Report(isFatal, "UBSan: Undefined Behavior in %s, passing zero to %s, which is not a valid argument\n",
        szLocation, DeserializeBuiltinCheckKind(pData->mKind));
}
