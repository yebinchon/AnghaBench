
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bhnd_nvram_tlv_env {int dummy; } ;
struct bhnd_nvram_tlv {int data; } ;


 int BHND_NV_LOG (char*,int) ;
 scalar_t__ NVRAM_TLV_TYPE_END ;
 scalar_t__ NVRAM_TLV_TYPE_ENV ;
 struct bhnd_nvram_tlv_env* bhnd_nvram_tlv_get_env (struct bhnd_nvram_tlv*,void*) ;
 int bhnd_nvram_tlv_next_record (int ,size_t*,size_t*,scalar_t__*) ;
 void* bhnd_nvram_tlv_to_cookie (struct bhnd_nvram_tlv*,size_t) ;

__attribute__((used)) static struct bhnd_nvram_tlv_env *
bhnd_nvram_tlv_next_env(struct bhnd_nvram_tlv *tlv, size_t *next,
    void **cookiep)
{
 uint8_t tag;
 int error;


 do {
  void *c;
  size_t offset;


  error = bhnd_nvram_tlv_next_record(tlv->data, next, &offset,
      &tag);
  if (error) {
   BHND_NV_LOG("unexpected error in next_record(): %d\n",
       error);
   return (((void*)0));
  }


  if (tag != NVRAM_TLV_TYPE_ENV)
   continue;


  c = bhnd_nvram_tlv_to_cookie(tlv, offset);


  if (cookiep != ((void*)0))
   *cookiep = c;

  return (bhnd_nvram_tlv_get_env(tlv, c));
 } while (tag != NVRAM_TLV_TYPE_END);


 return (((void*)0));
}
