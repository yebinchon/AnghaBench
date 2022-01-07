
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_get_info {int address; int io_mode; int offset; int iface_type; } ;
typedef int device_t ;


 int BT_MODE ;
 int KCS_MODE ;
 int SMIC_MODE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_delete_resource (int ,int ,int) ;
 int bzero (struct ipmi_get_info*,int) ;
 char* device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ resource_int_value (char const*,int,char*,int*) ;
 scalar_t__ resource_string_value (char const*,int,char*,char const**) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static int
ipmi_hint_identify(device_t dev, struct ipmi_get_info *info)
{
 const char *mode, *name;
 int i, unit, val;


 name = device_get_name(dev);
 unit = device_get_unit(dev);
 if (resource_string_value(name, unit, "mode", &mode) != 0)
  return (0);


 bzero(info, sizeof(struct ipmi_get_info));
 if (strcasecmp(mode, "KCS") == 0) {
  info->iface_type = KCS_MODE;
  info->address = 0xca2;
  info->io_mode = 1;
  info->offset = 1;
 } else if (strcasecmp(mode, "SMIC") == 0) {
  info->iface_type = SMIC_MODE;
  info->address = 0xca9;
  info->io_mode = 1;
  info->offset = 1;
 } else if (strcasecmp(mode, "BT") == 0) {
  info->iface_type = BT_MODE;
  info->address = 0xe4;
  info->io_mode = 1;
  info->offset = 1;
 } else {
  device_printf(dev, "Invalid mode %s\n", mode);
  return (0);
 }





 for (i = 0; i < 2; i++) {
  bus_delete_resource(dev, SYS_RES_MEMORY, i);
  bus_delete_resource(dev, SYS_RES_IOPORT, i);
 }


 if (resource_int_value(name, unit, "port", &val) == 0 && val != 0) {
  info->address = val;
  info->io_mode = 1;
 } else if (resource_int_value(name, unit, "maddr", &val) == 0 &&
     val != 0) {
  info->address = val;
  info->io_mode = 0;
 }


 if (resource_int_value(name, unit, "spacing", &val) == 0) {
  switch (val) {
  case 8:
   info->offset = 1;
   break;
  case 16:
   info->offset = 2;
   break;
  case 32:
   info->offset = 4;
   break;
  default:
   device_printf(dev, "Invalid register spacing\n");
   return (0);
  }
 }
 return (1);
}
