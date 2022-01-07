
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct malo_hal_caldata {int pt_ratetable_20m; } ;
struct malo_hal {int mh_flags; scalar_t__ mh_cmdbuf; } ;
struct malo_cmd_caltable {int* caltbl; } ;


 int MALO_HAL_LOCK (struct malo_hal*) ;
 int MALO_HAL_UNLOCK (struct malo_hal*) ;
 int MHF_CALDATA ;
 scalar_t__ malo_hal_get_cal_table (struct malo_hal*,int,int ) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int
malo_hal_get_pwrcal_table(struct malo_hal *mh, struct malo_hal_caldata *cal)
{
 const uint8_t *data;
 int len;

 MALO_HAL_LOCK(mh);

 data = ((const struct malo_cmd_caltable *) mh->mh_cmdbuf)->caltbl;
 if (malo_hal_get_cal_table(mh, 33, 0) == 0) {
  len = (data[2] | (data[3] << 8)) - 12;

  memcpy(cal->pt_ratetable_20m, &data[12], len);
 }
 mh->mh_flags |= MHF_CALDATA;
 MALO_HAL_UNLOCK(mh);

 return 0;
}
