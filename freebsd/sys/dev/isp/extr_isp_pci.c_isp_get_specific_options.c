
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int prefix ;
typedef int name ;
struct TYPE_9__ {int isp_confopts; } ;
typedef TYPE_1__ ispsoftc_t ;
typedef int device_t ;
struct TYPE_11__ {int default_id; int def_role; int def_wwpn; scalar_t__ def_wwnn; int loop_down_limit; int gone_device_time; } ;
struct TYPE_10__ {int iid; } ;


 int ISP_CFG_FCTAPE ;
 int ISP_CFG_FULL_DUPLEX ;
 int ISP_CFG_LPORT ;
 int ISP_CFG_LPORT_ONLY ;
 int ISP_CFG_NOFCTAPE ;
 int ISP_CFG_NPORT ;
 int ISP_CFG_NPORT_ONLY ;
 int ISP_CFG_OWNLOOPID ;
 int ISP_DEFAULT_ROLES ;
 TYPE_7__* ISP_FC_PC (TYPE_1__*,int) ;




 TYPE_5__* ISP_SPI_PC (TYPE_1__*,int) ;
 scalar_t__ IS_FC (TYPE_1__*) ;
 scalar_t__ IS_SCSI (TYPE_1__*) ;
 int OF_getscsinitid (int ) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int isp_gone_device_time ;
 int isp_loop_down_limit ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;
 int resource_string_value (int ,int ,char*,char const**) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 void* strtouq (char const*,char**,int) ;

__attribute__((used)) static void
isp_get_specific_options(device_t dev, int chan, ispsoftc_t *isp)
{
 const char *sptr;
 int tval = 0;
 char prefix[12], name[16];

 if (chan == 0)
  prefix[0] = 0;
 else
  snprintf(prefix, sizeof(prefix), "chan%d.", chan);
 snprintf(name, sizeof(name), "%siid", prefix);
 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval)) {
  if (IS_FC(isp)) {
   ISP_FC_PC(isp, chan)->default_id = 109 - chan;
  } else {



   ISP_SPI_PC(isp, chan)->iid = 7;

  }
 } else {
  if (IS_FC(isp)) {
   ISP_FC_PC(isp, chan)->default_id = tval - chan;
  } else {
   ISP_SPI_PC(isp, chan)->iid = tval;
  }
  isp->isp_confopts |= ISP_CFG_OWNLOOPID;
 }

 if (IS_SCSI(isp))
  return;

 tval = -1;
 snprintf(name, sizeof(name), "%srole", prefix);
 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval) == 0) {
  switch (tval) {
  case 129:
  case 130:
  case 128:
  case 131:
   device_printf(dev, "Chan %d setting role to 0x%x\n", chan, tval);
   break;
  default:
   tval = -1;
   break;
  }
 }
 if (tval == -1) {
  tval = ISP_DEFAULT_ROLES;
 }
 ISP_FC_PC(isp, chan)->def_role = tval;

 tval = 0;
 snprintf(name, sizeof(name), "%sfullduplex", prefix);
 if (resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval) == 0 && tval != 0) {
  isp->isp_confopts |= ISP_CFG_FULL_DUPLEX;
 }
 sptr = ((void*)0);
 snprintf(name, sizeof(name), "%stopology", prefix);
 if (resource_string_value(device_get_name(dev), device_get_unit(dev),
     name, (const char **) &sptr) == 0 && sptr != ((void*)0)) {
  if (strcmp(sptr, "lport") == 0) {
   isp->isp_confopts |= ISP_CFG_LPORT;
  } else if (strcmp(sptr, "nport") == 0) {
   isp->isp_confopts |= ISP_CFG_NPORT;
  } else if (strcmp(sptr, "lport-only") == 0) {
   isp->isp_confopts |= ISP_CFG_LPORT_ONLY;
  } else if (strcmp(sptr, "nport-only") == 0) {
   isp->isp_confopts |= ISP_CFG_NPORT_ONLY;
  }
 }




 isp->isp_confopts |= ISP_CFG_FCTAPE;


 tval = 0;
 snprintf(name, sizeof(name), "%snofctape", prefix);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval);
 if (tval) {
  isp->isp_confopts &= ~ISP_CFG_FCTAPE;
  isp->isp_confopts |= ISP_CFG_NOFCTAPE;
 }

 tval = 0;
 snprintf(name, sizeof(name), "%sfctape", prefix);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval);
 if (tval) {
  isp->isp_confopts &= ~ISP_CFG_NOFCTAPE;
  isp->isp_confopts |= ISP_CFG_FCTAPE;
 }
 sptr = ((void*)0);
 snprintf(name, sizeof(name), "%sportwwn", prefix);
 tval = resource_string_value(device_get_name(dev), device_get_unit(dev),
     name, (const char **) &sptr);
 if (tval == 0 && sptr != ((void*)0) && *sptr++ == 'w') {
  char *eptr = ((void*)0);
  ISP_FC_PC(isp, chan)->def_wwpn = strtouq(sptr, &eptr, 16);
  if (eptr < sptr + 16 || ISP_FC_PC(isp, chan)->def_wwpn == -1) {
   device_printf(dev, "mangled portwwn hint '%s'\n", sptr);
   ISP_FC_PC(isp, chan)->def_wwpn = 0;
  }
 }

 sptr = ((void*)0);
 snprintf(name, sizeof(name), "%snodewwn", prefix);
 tval = resource_string_value(device_get_name(dev), device_get_unit(dev),
     name, (const char **) &sptr);
 if (tval == 0 && sptr != ((void*)0) && *sptr++ == 'w') {
  char *eptr = ((void*)0);
  ISP_FC_PC(isp, chan)->def_wwnn = strtouq(sptr, &eptr, 16);
  if (eptr < sptr + 16 || ISP_FC_PC(isp, chan)->def_wwnn == 0) {
   device_printf(dev, "mangled nodewwn hint '%s'\n", sptr);
   ISP_FC_PC(isp, chan)->def_wwnn = 0;
  }
 }

 tval = -1;
 snprintf(name, sizeof(name), "%sloop_down_limit", prefix);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval);
 if (tval >= 0 && tval < 0xffff) {
  ISP_FC_PC(isp, chan)->loop_down_limit = tval;
 } else {
  ISP_FC_PC(isp, chan)->loop_down_limit = isp_loop_down_limit;
 }

 tval = -1;
 snprintf(name, sizeof(name), "%sgone_device_time", prefix);
 (void) resource_int_value(device_get_name(dev), device_get_unit(dev),
     name, &tval);
 if (tval >= 0 && tval < 0xffff) {
  ISP_FC_PC(isp, chan)->gone_device_time = tval;
 } else {
  ISP_FC_PC(isp, chan)->gone_device_time = isp_gone_device_time;
 }
}
