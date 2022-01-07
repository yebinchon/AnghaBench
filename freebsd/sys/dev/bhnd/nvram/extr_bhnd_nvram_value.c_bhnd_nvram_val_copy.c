
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int val_storage; int refs; int data_storage; int fmt; } ;
typedef TYPE_1__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_VAL_COPY_DATA ;





 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NVRAM_VAL_NEED_COPY (TYPE_1__*) ;
 int BHND_NVRAM_VAL_STATIC_DATA ;



 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,int) ;
 int BHND_NV_PANIC (char*,int) ;
 void* bhnd_nvram_val_bytes (TYPE_1__*,size_t*,int *) ;
 int bhnd_nvram_val_new (TYPE_1__**,int ,void const*,size_t,int ,int) ;
 int refcount_acquire (int*) ;

bhnd_nvram_val *
bhnd_nvram_val_copy(bhnd_nvram_val *value)
{
 bhnd_nvram_val *result;
 const void *bytes;
 bhnd_nvram_type type;
 size_t len;
 uint32_t flags;
 int error;

 switch (value->val_storage) {
 case 128:

  return (value);

 case 129:
  if (!BHND_NVRAM_VAL_NEED_COPY(value)) {
   refcount_acquire(&value->refs);
   return (value);
  }


  break;

 case 130:
  BHND_NV_ASSERT(value->refs == 1, ("non-allocated value has "
      "active refcount (%u)", value->refs));


  break;
 }



 switch (value->data_storage) {
 case 131:
 case 132:
 case 133:
 case 135:


  flags = BHND_NVRAM_VAL_COPY_DATA|BHND_NVRAM_VAL_DYNAMIC;
  break;
 case 134:
  flags = BHND_NVRAM_VAL_STATIC_DATA;
  break;
 default:
  BHND_NV_PANIC("invalid storage type: %d", value->data_storage);
 }


 bytes = bhnd_nvram_val_bytes(value, &len, &type);
 error = bhnd_nvram_val_new(&result, value->fmt, bytes, len, type,
     flags);
 if (error) {
  BHND_NV_LOG("copy failed: %d", error);
  return (((void*)0));
 }

 return (result);
}
