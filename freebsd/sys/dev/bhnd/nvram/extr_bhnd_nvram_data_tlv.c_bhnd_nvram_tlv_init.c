
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_tlv_env {char* envp; } ;
struct bhnd_nvram_tlv {scalar_t__ count; int * data; } ;
struct bhnd_nvram_io {int dummy; } ;


 int BHND_NV_ASSERT (int ,char*) ;
 int BHND_NV_LOG (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 size_t NVRAM_TLV_ENVP_DATA_LEN (struct bhnd_nvram_tlv_env*) ;
 int * bhnd_nvram_iobuf_copy_range (struct bhnd_nvram_io*,int,size_t) ;
 int bhnd_nvram_parse_env (char*,size_t,char,int *,size_t*,int *,int *) ;
 struct bhnd_nvram_tlv_env* bhnd_nvram_tlv_next_env (struct bhnd_nvram_tlv*,size_t*,int *) ;
 int bhnd_nvram_tlv_parse_size (struct bhnd_nvram_io*,size_t*) ;

__attribute__((used)) static int
bhnd_nvram_tlv_init(struct bhnd_nvram_tlv *tlv, struct bhnd_nvram_io *src)
{
 struct bhnd_nvram_tlv_env *env;
 size_t size;
 size_t next;
 int error;

 BHND_NV_ASSERT(tlv->data == ((void*)0), ("tlv data already initialized"));


 if ((error = bhnd_nvram_tlv_parse_size(src, &size)))
  return (error);


 if ((tlv->data = bhnd_nvram_iobuf_copy_range(src, 0x0, size)) == ((void*)0))
  return (ENOMEM);


 tlv->count = 0;
 next = 0;
 while ((env = bhnd_nvram_tlv_next_env(tlv, &next, ((void*)0))) != ((void*)0)) {
  size_t env_len;
  size_t name_len;


  env_len = NVRAM_TLV_ENVP_DATA_LEN(env);
  if (env_len == 0) {
   BHND_NV_LOG("cannot parse zero-length TLV_ENV record "
       "data\n");
   return (EINVAL);
  }




  error = bhnd_nvram_parse_env(env->envp, env_len, '=', ((void*)0),
      &name_len, ((void*)0), ((void*)0));
  if (error) {
   BHND_NV_LOG("error parsing TLV_ENV data: %d\n", error);
   return (error);
  }


  *(env->envp + name_len) = '\0';


  tlv->count++;
 };

 return (0);
}
