
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mFilename; } ;
struct CNonNullArgData {TYPE_1__ mAttributeLocation; int mArgIndex; TYPE_1__ mLocation; } ;


 int ASSERT (struct CNonNullArgData*) ;
 int DeserializeLocation (char*,int,TYPE_1__*) ;
 int LOCATION_MAXLEN ;
 int Report (int,char*,char*,int ,char*,char*) ;
 scalar_t__ isAlreadyReported (TYPE_1__*) ;

__attribute__((used)) static void
HandleNonnullArg(bool isFatal, struct CNonNullArgData *pData)
{
 char szLocation[LOCATION_MAXLEN];
 char szAttributeLocation[LOCATION_MAXLEN];

 ASSERT(pData);

 if (isAlreadyReported(&pData->mLocation))
  return;

 DeserializeLocation(szLocation, LOCATION_MAXLEN, &pData->mLocation);
 if (pData->mAttributeLocation.mFilename)
  DeserializeLocation(szAttributeLocation, LOCATION_MAXLEN, &pData->mAttributeLocation);
 else
  szAttributeLocation[0] = '\0';

 Report(isFatal, "UBSan: Undefined Behavior in %s, null pointer passed as argument %d, which is declared to never be null%s%s\n",
        szLocation, pData->mArgIndex, pData->mAttributeLocation.mFilename ? ", nonnull/_Nonnull specified in " : "", szAttributeLocation);
}
