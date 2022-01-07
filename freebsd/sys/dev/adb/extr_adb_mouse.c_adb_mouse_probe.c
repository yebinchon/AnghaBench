
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int device_t ;


 scalar_t__ ADB_DEVICE_MOUSE ;
 int ENXIO ;
 scalar_t__ adb_get_device_type (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
adb_mouse_probe(device_t dev)
{
 uint8_t type;

 type = adb_get_device_type(dev);

 if (type != ADB_DEVICE_MOUSE)
  return (ENXIO);

 device_set_desc(dev,"ADB Mouse");
 return (0);
}
