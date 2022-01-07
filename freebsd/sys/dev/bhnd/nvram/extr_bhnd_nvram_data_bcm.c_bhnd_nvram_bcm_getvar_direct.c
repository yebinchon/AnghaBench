
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_nvram_type ;


 int bhnd_nvram_bcm_getvar_direct_common (struct bhnd_nvram_io*,char const*,void*,size_t*,int ,int) ;

__attribute__((used)) static int
bhnd_nvram_bcm_getvar_direct(struct bhnd_nvram_io *io, const char *name,
    void *outp, size_t *olen, bhnd_nvram_type otype)
{
 return (bhnd_nvram_bcm_getvar_direct_common(io, name, outp, olen, otype,
     1));
}
