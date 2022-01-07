
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_nvram_type ;


 int BHND_BUS_GET_NVRAM_VAR (int ,int ,char const*,void*,size_t*,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_nvram_getvar(device_t dev, const char *name, void *buf, size_t *len,
     bhnd_nvram_type type)
{
 return (BHND_BUS_GET_NVRAM_VAR(device_get_parent(dev), dev, name, buf,
     len, type));
}
