
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bhnd_nvram_val_storage ;
struct TYPE_14__ {int native_type; } ;
typedef TYPE_1__ bhnd_nvram_val_fmt ;
struct TYPE_15__ {int data_storage; } ;
typedef TYPE_2__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_BORROW_DATA ;





 TYPE_2__ BHND_NVRAM_VAL_INITIALIZER (TYPE_1__ const*,int ) ;
 int BHND_NVRAM_VAL_STATIC_DATA ;
 int ENOMEM ;
 void* bhnd_nvram_val_alloc_bytes (TYPE_2__*,size_t,int ,int) ;
 void* bhnd_nvram_val_bytes (TYPE_2__*,size_t*,int *) ;
 int bhnd_nvram_val_encode (TYPE_2__*,void*,size_t*,int ) ;
 scalar_t__ bhnd_nvram_val_fmt_filter (TYPE_1__ const**,void const*,size_t,int ) ;
 int bhnd_nvram_val_init_common (TYPE_2__*,int ,TYPE_1__ const*,void const*,size_t,int ,int) ;

__attribute__((used)) static int
bhnd_nvram_val_convert_common(bhnd_nvram_val *value,
    bhnd_nvram_val_storage val_storage, const bhnd_nvram_val_fmt *fmt,
    bhnd_nvram_val *src, uint32_t flags)
{
 const void *inp;
 void *outp;
 bhnd_nvram_type itype, otype;
 size_t ilen, olen;
 int error;



 inp = bhnd_nvram_val_bytes(src, &ilen, &itype);
 if (bhnd_nvram_val_fmt_filter(&fmt, inp, ilen, itype) == 0) {

  switch (src->data_storage) {
  case 128:
  case 129:
  case 130:
  case 132:
   break;

  case 131:


   if (flags & BHND_NVRAM_VAL_BORROW_DATA)
    flags |= BHND_NVRAM_VAL_STATIC_DATA;

   break;
  }


  return (bhnd_nvram_val_init_common(value, val_storage, fmt, inp,
      ilen, itype, flags));
 }


 otype = fmt->native_type;


 *value = BHND_NVRAM_VAL_INITIALIZER(fmt, val_storage);


 if ((error = bhnd_nvram_val_encode(src, ((void*)0), &olen, otype)))
  return (error);


 outp = bhnd_nvram_val_alloc_bytes(value, olen, otype, flags);
 if (outp == ((void*)0))
  return (ENOMEM);


 if ((error = bhnd_nvram_val_encode(src, outp, &olen, otype)))
  return (error);

 return (0);
}
