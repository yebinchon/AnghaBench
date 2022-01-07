
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_priv {int mh_flags; int mh_40M_5G; int mh_20M_5G; int mh_40M; int mh_20M; scalar_t__ mh_cmdbuf; } ;
struct TYPE_2__ {int* calTbl; } ;
typedef int MWL_HAL_CHANNELINFO ;
typedef TYPE_1__ HostCmd_FW_GET_CALTABLE ;


 int MHF_CALDATA ;
 int MWL_HAL_LOCK (struct mwl_hal_priv*) ;
 int MWL_HAL_UNLOCK (struct mwl_hal_priv*) ;
 int PWTAGETRATETABLE20M ;
 int PWTAGETRATETABLE20M_5G ;
 int PWTAGETRATETABLE40M ;
 int PWTAGETRATETABLE40M_5G ;
 int dumpcaldata (char*,int const*,int) ;
 int get2Ghz (int *,int const*,int) ;
 int get5Ghz (int *,int const*,int) ;
 scalar_t__ mwlGetCalTable (struct mwl_hal_priv*,int,int ) ;

__attribute__((used)) static int
mwlGetPwrCalTable(struct mwl_hal_priv *mh)
{
 const uint8_t *data;
 MWL_HAL_CHANNELINFO *ci;
 int len;

 MWL_HAL_LOCK(mh);

 data = ((const HostCmd_FW_GET_CALTABLE *) mh->mh_cmdbuf)->calTbl;
 if (mwlGetCalTable(mh, 33, 0) == 0) {
  len = (data[2] | (data[3] << 8)) - 12;
  if (len > PWTAGETRATETABLE20M)
   len = PWTAGETRATETABLE20M;



  get2Ghz(&mh->mh_20M, &data[12], len);
 }
 if (mwlGetCalTable(mh, 34, 0) == 0) {
  len = (data[2] | (data[3] << 8)) - 12;
  if (len > PWTAGETRATETABLE40M)
   len = PWTAGETRATETABLE40M;



  ci = &mh->mh_40M;
  get2Ghz(ci, &data[12], len);
 }
 if (mwlGetCalTable(mh, 35, 0) == 0) {
  len = (data[2] | (data[3] << 8)) - 20;
  if (len > PWTAGETRATETABLE20M_5G)
   len = PWTAGETRATETABLE20M_5G;



  get5Ghz(&mh->mh_20M_5G, &data[20], len);
 }
 if (mwlGetCalTable(mh, 36, 0) == 0) {
  len = (data[2] | (data[3] << 8)) - 20;
  if (len > PWTAGETRATETABLE40M_5G)
   len = PWTAGETRATETABLE40M_5G;



  ci = &mh->mh_40M_5G;
  get5Ghz(ci, &data[20], len);
 }
 mh->mh_flags |= MHF_CALDATA;
 MWL_HAL_UNLOCK(mh);
 return 0;
}
