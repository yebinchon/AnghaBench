
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BHND_NVRAM_TYPE_STRING ;
 int bhnd_nvram_getvar (int ,char const*,char*,size_t*,int ) ;

int
bhnd_nvram_getvar_str(device_t dev, const char *name, char *buf, size_t len,
    size_t *rlen)
{
 size_t larg;
 int error;

 larg = len;
 error = bhnd_nvram_getvar(dev, name, buf, &larg,
     BHND_NVRAM_TYPE_STRING);
 if (rlen != ((void*)0))
  *rlen = larg;

 return (error);
}
