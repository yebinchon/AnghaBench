
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BHND_NV_LOG (char*,char,int ,char const*) ;
 int BHND_NV_PRINT_WIDTH (size_t) ;
 int EINVAL ;
 char* memchr (char const*,char,size_t) ;

int
bhnd_nvram_parse_env(const char *env, size_t env_len, char delim,
    const char **name, size_t *name_len, const char **value, size_t *value_len)
{
 const char *p;


 if ((p = memchr(env, delim, env_len)) == ((void*)0)) {
  BHND_NV_LOG("delimiter '%c' not found in '%.*s'\n", delim,
      BHND_NV_PRINT_WIDTH(env_len), env);
  return (EINVAL);
 }


 if (name != ((void*)0))
  *name = env;
 if (name_len != ((void*)0))
  *name_len = p - env;


 p++;


 if (value != ((void*)0))
  *value = p;
 if (value_len != ((void*)0))
  *value_len = env_len - (p - env);

 return (0);
}
