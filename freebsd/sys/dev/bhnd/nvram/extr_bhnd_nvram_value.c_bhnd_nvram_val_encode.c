
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* fmt; } ;
typedef TYPE_2__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;
struct TYPE_6__ {int (* op_encode ) (TYPE_2__*,void*,size_t*,int ) ;} ;


 int bhnd_nvram_val_generic_encode (TYPE_2__*,void*,size_t*,int ) ;
 int stub1 (TYPE_2__*,void*,size_t*,int ) ;

int
bhnd_nvram_val_encode(bhnd_nvram_val *value, void *outp, size_t *olen,
    bhnd_nvram_type otype)
{

 if (value->fmt->op_encode != ((void*)0))
  return (value->fmt->op_encode(value, outp, olen, otype));

 return (bhnd_nvram_val_generic_encode(value, outp, olen, otype));
}
