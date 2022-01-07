
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* fmt; } ;
typedef TYPE_2__ bhnd_nvram_val ;
struct TYPE_6__ {void const* (* op_next ) (TYPE_2__*,void const*,size_t*) ;} ;


 void const* bhnd_nvram_val_generic_next (TYPE_2__*,void const*,size_t*) ;
 void const* stub1 (TYPE_2__*,void const*,size_t*) ;

const void *
bhnd_nvram_val_next(bhnd_nvram_val *value, const void *prev, size_t *olen)
{

 if (value->fmt->op_next != ((void*)0))
  return (value->fmt->op_next(value, prev, olen));

 return (bhnd_nvram_val_generic_next(value, prev, olen));
}
