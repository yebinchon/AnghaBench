
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {void const* ptr; } ;
struct TYPE_7__ {size_t data_len; int data_type; TYPE_1__ data; int data_storage; } ;
typedef TYPE_2__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_ASSERT_EMPTY (TYPE_2__*) ;
 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NVRAM_VAL_DATA_EXT_STATIC ;
 int BHND_NVRAM_VAL_DATA_EXT_WEAK ;
 int BHND_NVRAM_VAL_STATIC_DATA ;
 int ENOMEM ;
 void* bhnd_nvram_val_alloc_bytes (TYPE_2__*,size_t,int ,int) ;
 int bhnd_nvram_value_check_aligned (void const*,size_t,int ) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static int
bhnd_nvram_val_set(bhnd_nvram_val *value, const void *inp, size_t ilen,
    bhnd_nvram_type itype, uint32_t flags)
{
 void *bytes;
 int error;

 BHND_NVRAM_VAL_ASSERT_EMPTY(value);


 if ((error = bhnd_nvram_value_check_aligned(inp, ilen, itype)))
  return (error);


 if ((flags & BHND_NVRAM_VAL_BORROW_DATA) ||
     (flags & BHND_NVRAM_VAL_STATIC_DATA))
 {
  if (flags & BHND_NVRAM_VAL_STATIC_DATA)
   value->data_storage = BHND_NVRAM_VAL_DATA_EXT_STATIC;
  else
   value->data_storage = BHND_NVRAM_VAL_DATA_EXT_WEAK;

  value->data.ptr = inp;
  value->data_type = itype;
  value->data_len = ilen;
  return (0);
 }


 bytes = bhnd_nvram_val_alloc_bytes(value, ilen, itype, flags);
 if (bytes == ((void*)0))
  return (ENOMEM);


 memcpy(bytes, inp, ilen);

 return (0);
}
