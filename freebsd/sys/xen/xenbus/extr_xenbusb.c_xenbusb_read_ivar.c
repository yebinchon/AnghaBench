
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_ivars {int xd_otherend_path; int xd_otherend_id; int xd_state; int xd_type; int xd_node; } ;
typedef int device_t ;


 int ENOENT ;





 struct xenbus_device_ivars* device_get_ivars (int ) ;

int
xenbusb_read_ivar(device_t dev, device_t child, int index, uintptr_t *result)
{
 struct xenbus_device_ivars *ivars = device_get_ivars(child);

 switch (index) {
 case 132:
  *result = (uintptr_t) ivars->xd_node;
  return (0);

 case 128:
  *result = (uintptr_t) ivars->xd_type;
  return (0);

 case 129:
  *result = (uintptr_t) ivars->xd_state;
  return (0);

 case 131:
  *result = (uintptr_t) ivars->xd_otherend_id;
  return (0);

 case 130:
  *result = (uintptr_t) ivars->xd_otherend_path;
  return (0);
 }

 return (ENOENT);
}
