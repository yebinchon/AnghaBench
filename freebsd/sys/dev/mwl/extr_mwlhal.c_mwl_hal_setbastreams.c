
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int mh_bastreams; } ;


 TYPE_1__* MWLPRIV (struct mwl_hal*) ;
 int MWL_BASTREAMS_MAX ;

void
mwl_hal_setbastreams(struct mwl_hal *mh, int mask)
{
 MWLPRIV(mh)->mh_bastreams = mask & ((1<<MWL_BASTREAMS_MAX)-1);
}
