
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_nvram_type ;
struct TYPE_3__ {int (* op_getvar_direct ) (struct bhnd_nvram_io*,char const*,void*,size_t*,int ) ;} ;
typedef TYPE_1__ bhnd_nvram_data_class ;


 int stub1 (struct bhnd_nvram_io*,char const*,void*,size_t*,int ) ;

int
bhnd_nvram_data_getvar_direct(bhnd_nvram_data_class *cls,
    struct bhnd_nvram_io *io, const char *name, void *buf, size_t *len,
    bhnd_nvram_type type)
{
 return (cls->op_getvar_direct(io, name, buf, len, type));
}
