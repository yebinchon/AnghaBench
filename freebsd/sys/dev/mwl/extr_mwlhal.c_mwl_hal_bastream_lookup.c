
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal_priv {int mh_bastreams; TYPE_1__* mh_streams; } ;
struct mwl_hal {int dummy; } ;
struct TYPE_2__ {int const public; } ;
typedef int MWL_HAL_BASTREAM ;


 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int MWL_BASTREAMS_MAX ;

const MWL_HAL_BASTREAM *
mwl_hal_bastream_lookup(struct mwl_hal *mh0, int s)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);

 if (!(0 <= s && s < MWL_BASTREAMS_MAX))
  return ((void*)0);
 if (mh->mh_bastreams & (1<<s))
  return ((void*)0);
 return &mh->mh_streams[s].public;
}
