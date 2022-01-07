
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ freqLow; scalar_t__ freqHigh; } ;
struct mwl_hal_priv {TYPE_1__ mh_40M_5G; TYPE_1__ mh_20M_5G; TYPE_1__ mh_40M; TYPE_1__ mh_20M; } ;
struct mwl_hal {int dummy; } ;
typedef TYPE_1__ MWL_HAL_CHANNELINFO ;


 int EINVAL ;
 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int MWL_CH_20_MHz_WIDTH ;



int
mwl_hal_getchannelinfo(struct mwl_hal *mh0, int band, int chw,
 const MWL_HAL_CHANNELINFO **ci)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);

 switch (band) {
 case 129:
  *ci = (chw == MWL_CH_20_MHz_WIDTH) ? &mh->mh_20M : &mh->mh_40M;
  break;
 case 128:
  *ci = (chw == MWL_CH_20_MHz_WIDTH) ?
       &mh->mh_20M_5G : &mh->mh_40M_5G;
  break;
 default:
  return EINVAL;
 }
 return ((*ci)->freqLow == (*ci)->freqHigh) ? EINVAL : 0;
}
