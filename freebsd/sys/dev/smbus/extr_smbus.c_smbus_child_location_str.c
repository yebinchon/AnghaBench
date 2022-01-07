
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_ivar {scalar_t__ addr; } ;
typedef int device_t ;


 struct smbus_ivar* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;

__attribute__((used)) static int
smbus_child_location_str(device_t parent, device_t child, char *buf,
    size_t buflen)
{
 struct smbus_ivar *devi;

 devi = device_get_ivars(child);
 if (devi->addr != 0)
  snprintf(buf, buflen, "addr=0x%x", devi->addr);
 else if (buflen)
  buf[0] = 0;
 return (0);
}
