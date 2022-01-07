
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* device_t ;


 scalar_t__ bootverbose ;
 int device_printf (void*,char*,int) ;
 int superio_read (void*,int) ;
 int superio_write (void*,int,int) ;

__attribute__((used)) static void
itwd_intr(void *cookie)
{
 device_t dev = cookie;
 uint8_t val;

 val = superio_read(dev, 0x71);
 if (bootverbose)
  device_printf(dev, "got interrupt, wdt status = %d\n", val & 1);
 superio_write(dev, 0x71, val & ~((uint8_t)0x01));
}
