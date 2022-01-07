
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiobus_ivar {int npins; } ;
typedef int device_t ;


 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 int gpiobus_print_pins (struct gpiobus_ivar*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
gpiobus_child_location_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct gpiobus_ivar *devi;

 devi = GPIOBUS_IVAR(child);
 if (devi->npins > 1)
  strlcpy(buf, "pins=", buflen);
 else
  strlcpy(buf, "pin=", buflen);
 gpiobus_print_pins(devi, buf, buflen);

 return (0);
}
