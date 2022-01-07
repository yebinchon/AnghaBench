
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {uintptr_t npins; } ;
typedef int device_t ;


 int ENOENT ;
 int ENOTSUP ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;



__attribute__((used)) static int
gpiobus_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
 struct gpiobus_ivar *devi;

 devi = GPIOBUS_IVAR(child);
        switch (which) {
 case 129:
  *result = devi->npins;
  break;
 case 128:

  return (ENOTSUP);
        default:
                return (ENOENT);
        }

 return (0);
}
