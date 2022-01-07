
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENOENT ;


 uintptr_t pcib_get_bus (int ) ;

__attribute__((used)) static int
qpi_pcib_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{

 switch (which) {
 case 128:
  *result = 0;
  return (0);
 case 129:
  *result = pcib_get_bus(dev);
  return (0);
 default:
  return (ENOENT);
 }
}
