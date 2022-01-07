
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int verbose; int cfg_role; int do_cfg_role; int msi_enable; int dev; scalar_t__ is_sas; } ;


 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

__attribute__((used)) static void
mpt_set_options(struct mpt_softc *mpt)
{
 int tval;

 tval = 0;
 if (resource_int_value(device_get_name(mpt->dev),
     device_get_unit(mpt->dev), "debug", &tval) == 0 && tval != 0) {
  mpt->verbose = tval;
 }
 tval = -1;
 if (resource_int_value(device_get_name(mpt->dev),
     device_get_unit(mpt->dev), "role", &tval) == 0 && tval >= 0 &&
     tval <= 3) {
  mpt->cfg_role = tval;
  mpt->do_cfg_role = 1;
 }
 tval = 0;
 mpt->msi_enable = 0;
 if (mpt->is_sas)
  mpt->msi_enable = 1;
 if (resource_int_value(device_get_name(mpt->dev),
     device_get_unit(mpt->dev), "msi_enable", &tval) == 0) {
  mpt->msi_enable = tval;
 }
}
