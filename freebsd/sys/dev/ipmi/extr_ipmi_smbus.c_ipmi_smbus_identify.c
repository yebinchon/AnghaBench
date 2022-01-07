
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_get_info {scalar_t__ iface_type; } ;
typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int) ;
 scalar_t__ SSIF_MODE ;
 int * device_find_child (int ,char*,int) ;
 scalar_t__ ipmi_smbios_identify (struct ipmi_get_info*) ;

__attribute__((used)) static void
ipmi_smbus_identify(driver_t *driver, device_t parent)
{
 struct ipmi_get_info info;

 if (ipmi_smbios_identify(&info) && info.iface_type == SSIF_MODE &&
     device_find_child(parent, "ipmi", -1) == ((void*)0))
  BUS_ADD_CHILD(parent, 0, "ipmi", -1);
}
