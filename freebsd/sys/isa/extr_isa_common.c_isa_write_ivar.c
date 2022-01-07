
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {uintptr_t id_vendorid; uintptr_t id_serial; uintptr_t id_logicalid; uintptr_t id_compatid; uintptr_t id_config_attr; } ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;
 int EINVAL ;
 int ENOENT ;
__attribute__((used)) static int
isa_write_ivar(device_t bus, device_t dev, int index, uintptr_t value)
{
 struct isa_device* idev = DEVTOISA(dev);

 switch (index) {
 case 131:
 case 130:
 case 133:
 case 132:
 case 137:
 case 136:
 case 135:
 case 134:
 case 140:
 case 139:
 case 142:
 case 141:
  return (EINVAL);

 case 128:
  idev->id_vendorid = value;
  break;

 case 129:
  idev->id_serial = value;
  break;

 case 138:
  idev->id_logicalid = value;
  break;

 case 144:
  idev->id_compatid = value;
  break;

 case 143:
  idev->id_config_attr = value;
  break;

 default:
  return (ENOENT);
 }

 return (0);
}
