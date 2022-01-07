
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpiobus_ivar {uintptr_t npins; int * pins; } ;
typedef int device_t ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;


 int device_printf (int ,char*) ;
 int gpiobus_acquire_child_pins (int ,int ) ;
 int gpiobus_alloc_ivars (struct gpiobus_ivar*) ;

__attribute__((used)) static int
gpiobus_write_ivar(device_t dev, device_t child, int which, uintptr_t value)
{
 struct gpiobus_ivar *devi;
 const uint32_t *ptr;
 int i;

 devi = GPIOBUS_IVAR(child);
        switch (which) {
 case 129:

  if (devi->npins != 0) {
   return (EBUSY);
  }
  devi->npins = value;
  if (gpiobus_alloc_ivars(devi) != 0) {
   device_printf(child, "cannot allocate device ivars\n");
   devi->npins = 0;
   return (ENOMEM);
  }
  break;
 case 128:
  ptr = (const uint32_t *)value;
  for (i = 0; i < devi->npins; i++)
   devi->pins[i] = ptr[i];
  if (gpiobus_acquire_child_pins(dev, child) != 0)
   return (EBUSY);
  break;
        default:
                return (ENOENT);
        }

        return (0);
}
