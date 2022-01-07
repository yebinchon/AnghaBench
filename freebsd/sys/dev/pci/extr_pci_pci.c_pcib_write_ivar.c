
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int EINVAL ;
 int ENOENT ;



int
pcib_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{

    switch (which) {
    case 128:
 return(EINVAL);
    case 129:
 return(EINVAL);
    }
    return(ENOENT);
}
