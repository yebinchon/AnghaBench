
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int ENOENT ;


 int legacy_set_pcibus (int ,uintptr_t) ;

int
legacy_pcib_write_ivar(device_t dev, device_t child, int which,
    uintptr_t value)
{

 switch (which) {
 case 128:
  return EINVAL;
 case 129:
  legacy_set_pcibus(dev, value);
  return 0;
 }
 return ENOENT;
}
