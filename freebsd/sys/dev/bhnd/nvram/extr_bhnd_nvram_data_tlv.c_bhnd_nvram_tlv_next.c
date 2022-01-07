
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv_env {char const* envp; } ;
struct bhnd_nvram_tlv {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;


 int BHND_NV_PANIC (char*) ;
 struct bhnd_nvram_tlv_env* bhnd_nvram_tlv_next_env (struct bhnd_nvram_tlv*,size_t*,void**) ;
 size_t bhnd_nvram_tlv_to_offset (struct bhnd_nvram_tlv*,void*) ;

__attribute__((used)) static const char *
bhnd_nvram_tlv_next(struct bhnd_nvram_data *nv, void **cookiep)
{
 struct bhnd_nvram_tlv *tlv;
 struct bhnd_nvram_tlv_env *env;
 size_t io_offset;

 tlv = (struct bhnd_nvram_tlv *)nv;


 if (*cookiep == ((void*)0)) {

  io_offset = 0x0;
  env = bhnd_nvram_tlv_next_env(tlv, &io_offset, cookiep);
 } else {

  io_offset = bhnd_nvram_tlv_to_offset(tlv, *cookiep);
  env = bhnd_nvram_tlv_next_env(tlv, &io_offset, ((void*)0));
  if (env == ((void*)0))
   BHND_NV_PANIC("invalid cookiep; record missing");


  env = bhnd_nvram_tlv_next_env(tlv, &io_offset, cookiep);
 }


 if (env == ((void*)0))
  return (((void*)0));


 return (env->envp);
}
