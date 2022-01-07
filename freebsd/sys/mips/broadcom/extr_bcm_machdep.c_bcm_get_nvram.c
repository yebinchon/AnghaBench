
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_platform {int * nvram_io; int * nvram_cls; } ;
typedef int bhnd_nvram_type ;


 int ENOENT ;
 int bhnd_nvram_data_getvar_direct (int *,int *,char const*,void*,size_t*,int ) ;

int
bcm_get_nvram(struct bcm_platform *bp, const char *name, void *buf, size_t *len,
    bhnd_nvram_type type)
{
 if (bp->nvram_io == ((void*)0) || bp->nvram_cls == ((void*)0))
  return (ENOENT);

 return (bhnd_nvram_data_getvar_direct(bp->nvram_cls, bp->nvram_io, name,
     buf, len, type));
}
