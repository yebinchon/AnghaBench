
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int device_t ;


 scalar_t__ ADB_DEVICE_KEYBOARD ;
 int ENXIO ;
 int adb_get_device_handler (int ) ;
 scalar_t__ adb_get_device_type (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
adb_kbd_probe(device_t dev)
{
 uint8_t type;

 type = adb_get_device_type(dev);

 if (type != ADB_DEVICE_KEYBOARD)
  return (ENXIO);

 switch(adb_get_device_handler(dev)) {
 case 1:
  device_set_desc(dev,"Apple Standard Keyboard");
  break;
 case 2:
  device_set_desc(dev,"Apple Extended Keyboard");
  break;
 case 4:
  device_set_desc(dev,"Apple ISO Keyboard");
  break;
 case 5:
  device_set_desc(dev,"Apple Extended ISO Keyboard");
  break;
 case 8:
  device_set_desc(dev,"Apple Keyboard II");
  break;
 case 9:
  device_set_desc(dev,"Apple ISO Keyboard II");
  break;
 case 12:
  device_set_desc(dev,"PowerBook Keyboard");
  break;
 case 13:
  device_set_desc(dev,"PowerBook ISO Keyboard");
  break;
 case 24:
  device_set_desc(dev,"PowerBook Extended Keyboard");
  break;
 case 27:
  device_set_desc(dev,"Apple Design Keyboard");
  break;
 case 195:
  device_set_desc(dev,"PowerBook G3 Keyboard");
  break;
 case 196:
  device_set_desc(dev,"iBook Keyboard");
  break;
 default:
  device_set_desc(dev,"ADB Keyboard");
  break;
 }

 return (0);
}
