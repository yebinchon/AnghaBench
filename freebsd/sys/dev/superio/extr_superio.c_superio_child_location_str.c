
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int snprintf (char*,size_t,char*,int) ;
 int superio_get_ldn (int ) ;

__attribute__((used)) static int
superio_child_location_str(device_t parent, device_t child, char *buf,
    size_t buflen)
{
 uint8_t ldn;

 ldn = superio_get_ldn(child);
 snprintf(buf, buflen, "ldn=0x%02x", ldn);
 return (0);
}
