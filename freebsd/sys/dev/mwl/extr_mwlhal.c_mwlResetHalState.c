
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal_priv {int mh_bastreams; int mh_flags; scalar_t__ mh_FCSErrorCount; scalar_t__ mh_RxDuplicateFrames; scalar_t__ mh_RTSFailures; scalar_t__ mh_RTSSuccesses; TYPE_1__* mh_vaps; } ;
struct TYPE_2__ {int * mh; } ;


 int MHF_CALDATA ;
 int MWL_BASTREAMS_MAX ;
 int MWL_MBSS_MAX ;
 int mwlGetPwrCalTable (struct mwl_hal_priv*) ;

__attribute__((used)) static int
mwlResetHalState(struct mwl_hal_priv *mh)
{
 int i;


 mh->mh_bastreams = (1<<MWL_BASTREAMS_MAX)-1;
 for (i = 0; i < MWL_MBSS_MAX; i++)
  mh->mh_vaps[i].mh = ((void*)0);



 mh->mh_RTSSuccesses = 0;
 mh->mh_RTSFailures = 0;
 mh->mh_RxDuplicateFrames = 0;
 mh->mh_FCSErrorCount = 0;





 if ((mh->mh_flags & MHF_CALDATA) == 0)
  mwlGetPwrCalTable(mh);
 return 0;
}
