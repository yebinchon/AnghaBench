
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PPBUS_WRITE (int ,char*,int,int) ;
 int device_get_parent (int ) ;
 int ppb_assert_locked (int ) ;

int
ppb_write(device_t bus, char *buf, int len, int how)
{

 ppb_assert_locked(bus);
 return (PPBUS_WRITE(device_get_parent(bus), buf, len, how));
}
