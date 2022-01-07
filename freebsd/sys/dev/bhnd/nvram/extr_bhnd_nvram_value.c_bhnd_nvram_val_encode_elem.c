
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* fmt; } ;
typedef TYPE_2__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;
struct TYPE_6__ {int (* op_encode_elem ) (TYPE_2__*,void const*,size_t,void*,size_t*,int ) ;} ;


 int bhnd_nvram_val_generic_encode_elem (TYPE_2__*,void const*,size_t,void*,size_t*,int ) ;
 int stub1 (TYPE_2__*,void const*,size_t,void*,size_t*,int ) ;

int
bhnd_nvram_val_encode_elem(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{

 if (value->fmt->op_encode_elem != ((void*)0)) {
  return (value->fmt->op_encode_elem(value, inp, ilen, outp,
      olen, otype));
 }

 return (bhnd_nvram_val_generic_encode_elem(value, inp, ilen, outp,
     olen, otype));
}
