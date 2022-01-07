
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int CONTROL ;
 scalar_t__ OF_getprop_alloc (scalar_t__,char*,void**) ;
 int OF_prop_free (char*) ;
 int USB_EN ;
 int UTMI_PHY_EN ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int ) ;

__attribute__((used)) static void
enable_usb(device_t dev, bus_space_tag_t iot, bus_space_handle_t ioh)
{
 int tmp;
 phandle_t node;
 char *phy_type;

 phy_type = ((void*)0);
 tmp = bus_space_read_4(iot, ioh, CONTROL) | USB_EN;

 node = ofw_bus_get_node(dev);
 if ((node != 0) &&
     (OF_getprop_alloc(node, "phy_type", (void **)&phy_type) > 0)) {
  if (strncasecmp(phy_type, "utmi", strlen("utmi")) == 0)
   tmp |= UTMI_PHY_EN;
  OF_prop_free(phy_type);
 }
 bus_space_write_4(iot, ioh, CONTROL, tmp);
}
