
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bhnd_nvram_val_storage ;
struct TYPE_6__ {scalar_t__ native_type; } ;
typedef TYPE_1__ bhnd_nvram_val_fmt ;
typedef int bhnd_nvram_val ;
typedef scalar_t__ bhnd_nvram_type ;


 int BHND_NVRAM_VAL_INITIALIZER (TYPE_1__ const*,int ) ;
 int ENOMEM ;
 void* bhnd_nvram_val_alloc_bytes (int *,size_t,scalar_t__,int ) ;
 TYPE_1__* bhnd_nvram_val_default_fmt (scalar_t__) ;
 int bhnd_nvram_val_fmt_filter (TYPE_1__ const**,void const*,size_t,scalar_t__) ;
 int bhnd_nvram_val_set (int *,void const*,size_t,scalar_t__,int ) ;
 int bhnd_nvram_value_coerce (void const*,size_t,scalar_t__,void*,size_t*,scalar_t__) ;

__attribute__((used)) static int
bhnd_nvram_val_init_common(bhnd_nvram_val *value,
    bhnd_nvram_val_storage val_storage, const bhnd_nvram_val_fmt *fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype, uint32_t flags)
{
 void *outp;
 bhnd_nvram_type otype;
 size_t olen;
 int error;



 if (fmt == ((void*)0))
  fmt = bhnd_nvram_val_default_fmt(itype);



 if ((error = bhnd_nvram_val_fmt_filter(&fmt, inp, ilen, itype))) {



  otype = fmt->native_type;
 } else {

  otype = itype;
 }


 *value = BHND_NVRAM_VAL_INITIALIZER(fmt, val_storage);


 if (otype == itype) {
  error = bhnd_nvram_val_set(value, inp, ilen, itype, flags);
  if (error)
   return (error);

  return (0);
 }


 error = bhnd_nvram_value_coerce(inp, ilen, itype, ((void*)0), &olen, otype);
 if (error)
  return (error);


 outp = bhnd_nvram_val_alloc_bytes(value, olen, otype, flags);
 if (outp == ((void*)0))
  return (ENOMEM);


 error = bhnd_nvram_value_coerce(inp, ilen, itype, outp, &olen, otype);
 if (error)
  return (error);

 return (0);
}
