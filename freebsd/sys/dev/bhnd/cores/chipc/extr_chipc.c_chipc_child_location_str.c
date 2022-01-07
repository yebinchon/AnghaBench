
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int EOVERFLOW ;

__attribute__((used)) static int
chipc_child_location_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 if (buflen == 0)
  return (EOVERFLOW);

 *buf = '\0';
 return (ENXIO);
}
