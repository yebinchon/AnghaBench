
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_TYPE_INT16 ;
 int BHND_NVRAM_TYPE_INT32 ;
 int BHND_NVRAM_TYPE_INT8 ;
 int EINVAL ;
 int bhnd_nvram_getvar (int ,char const*,void*,size_t*,int ) ;
 int device_printf (int ,char*,int) ;

int
bhnd_nvram_getvar_int(device_t dev, const char *name, void *value, int width)
{
 bhnd_nvram_type type;
 size_t len;

 switch (width) {
 case 1:
  type = BHND_NVRAM_TYPE_INT8;
  break;
 case 2:
  type = BHND_NVRAM_TYPE_INT16;
  break;
 case 4:
  type = BHND_NVRAM_TYPE_INT32;
  break;
 default:
  device_printf(dev, "unsupported NVRAM integer width: %d\n",
      width);
  return (EINVAL);
 }

 len = width;
 return (bhnd_nvram_getvar(dev, name, value, &len, type));
}
