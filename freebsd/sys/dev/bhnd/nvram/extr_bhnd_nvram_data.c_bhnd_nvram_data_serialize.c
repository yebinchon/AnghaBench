
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bhnd_nvram_plist ;
struct TYPE_4__ {int (* op_serialize ) (TYPE_1__*,int *,int *,void*,size_t*) ;} ;
typedef TYPE_1__ bhnd_nvram_data_class ;


 int stub1 (TYPE_1__*,int *,int *,void*,size_t*) ;

int
bhnd_nvram_data_serialize(bhnd_nvram_data_class *cls,
    bhnd_nvram_plist *props, bhnd_nvram_plist *options, void *outp,
    size_t *olen)
{
 return (cls->op_serialize(cls, props, options, outp, olen));
}
