
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_nvram_type ;


 int ENXIO ;
 int bhnd_nvram_getvar (int ,char const*,void*,size_t*,int ) ;

int
bhnd_nvram_getvar_array(device_t dev, const char *name, void *buf, size_t size,
    bhnd_nvram_type type)
{
 size_t nbytes;
 int error;


 nbytes = size;
 if ((error = bhnd_nvram_getvar(dev, name, buf, &nbytes, type)))
  return (error);


 if (nbytes < size)
  return (ENXIO);

 return (0);
}
