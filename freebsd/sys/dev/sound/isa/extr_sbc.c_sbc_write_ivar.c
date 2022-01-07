
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int ENOENT ;

__attribute__((used)) static int
sbc_write_ivar(device_t bus, device_t dev,
        int index, uintptr_t value)
{
 switch (index) {
 case 0:
 case 1:
    return EINVAL;

 default:
  return (ENOENT);
 }
}
