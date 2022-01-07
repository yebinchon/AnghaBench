
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {int dd_state; } ;
typedef enum DeviceStatus { ____Placeholder_DeviceStatus } DeviceStatus ;





 int DS_DOWN ;

 int DS_RUNNING ;
 int DS_UNKNOWN ;
 int assert (int ) ;

__attribute__((used)) static enum DeviceStatus
device_get_status(struct devinfo_dev *dev)
{

 assert(dev != ((void*)0));

 switch (dev->dd_state) {
 case 131:
 case 128:
  return (DS_DOWN);
 case 130:
 case 129:
  return (DS_RUNNING);
 default:
  return (DS_UNKNOWN);
 }
}
