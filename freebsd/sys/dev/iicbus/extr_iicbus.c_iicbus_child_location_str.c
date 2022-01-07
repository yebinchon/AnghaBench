
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_ivar {int addr; } ;
typedef int device_t ;


 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int
iicbus_child_location_str(device_t bus, device_t child, char *buf,
    size_t buflen)
{
 struct iicbus_ivar *devi = IICBUS_IVAR(child);

 snprintf(buf, buflen, "addr=%#x", devi->addr);
 return (0);
}
