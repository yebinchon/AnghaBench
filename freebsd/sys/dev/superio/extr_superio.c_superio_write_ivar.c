
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int ENOENT ;







__attribute__((used)) static int
superio_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{

 switch (which) {
 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
 case 133:
  return (EINVAL);
 default:
  return (ENOENT);
 }
}
