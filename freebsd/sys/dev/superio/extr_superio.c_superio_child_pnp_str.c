
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int superio_dev_type_t ;
typedef int device_t ;


 char* devtype_to_str (int ) ;
 int snprintf (char*,size_t,char*,char*) ;
 int superio_get_type (int ) ;

__attribute__((used)) static int
superio_child_pnp_str(device_t parent, device_t child, char *buf,
    size_t buflen)
{
 superio_dev_type_t type;

 type = superio_get_type(child);
 snprintf(buf, buflen, "type=%s", devtype_to_str(type));
 return (0);
}
