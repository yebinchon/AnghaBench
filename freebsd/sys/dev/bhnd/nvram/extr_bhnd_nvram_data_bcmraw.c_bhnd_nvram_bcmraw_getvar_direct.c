
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_bcm_getvar_direct_common (struct bhnd_nvram_io*,char const*,void*,size_t*,int ,int) ;

__attribute__((used)) static int
bhnd_nvram_bcmraw_getvar_direct(struct bhnd_nvram_io *io, const char *name,
    void *buf, size_t *len, bhnd_nvram_type type)
{
 return (bhnd_nvram_bcm_getvar_direct_common(io, name, buf, len, type,
     0));
}
