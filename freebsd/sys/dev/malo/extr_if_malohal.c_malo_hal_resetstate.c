
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_hal {int mh_flags; int mh_caldata; } ;


 int MHF_CALDATA ;
 int malo_hal_get_pwrcal_table (struct malo_hal*,int *) ;

__attribute__((used)) static int
malo_hal_resetstate(struct malo_hal *mh)
{




 if ((mh->mh_flags & MHF_CALDATA) == 0)
  malo_hal_get_pwrcal_table(mh, &mh->mh_caldata);
 return 0;
}
