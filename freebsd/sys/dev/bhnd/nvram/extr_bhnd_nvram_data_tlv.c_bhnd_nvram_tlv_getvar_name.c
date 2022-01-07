
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv_env {char const* envp; } ;
struct bhnd_nvram_tlv {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;


 int BHND_NV_PANIC (char*,void*) ;
 struct bhnd_nvram_tlv_env* bhnd_nvram_tlv_get_env (struct bhnd_nvram_tlv*,void*) ;

__attribute__((used)) static const char *
bhnd_nvram_tlv_getvar_name(struct bhnd_nvram_data *nv, void *cookiep)
{
 struct bhnd_nvram_tlv *tlv;
 const struct bhnd_nvram_tlv_env *env;

 tlv = (struct bhnd_nvram_tlv *)nv;


 if ((env = bhnd_nvram_tlv_get_env(tlv, cookiep)) == ((void*)0))
  BHND_NV_PANIC("invalid cookiep: %p", cookiep);


 return (&env->envp[0]);
}
