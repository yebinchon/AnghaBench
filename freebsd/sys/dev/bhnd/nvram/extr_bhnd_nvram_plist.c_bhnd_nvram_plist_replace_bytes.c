
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_type ;
typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int ENOMEM ;
 int bhnd_nvram_plist_replace (int *,int *) ;
 int * bhnd_nvram_prop_bytes_new (char const*,void const*,size_t,int ) ;
 int bhnd_nvram_prop_release (int *) ;

int
bhnd_nvram_plist_replace_bytes(bhnd_nvram_plist *plist, const char *name,
    const void *inp, size_t ilen, bhnd_nvram_type itype)
{
 bhnd_nvram_prop *prop;
 int error;

 if ((prop = bhnd_nvram_prop_bytes_new(name, inp, ilen, itype)) == ((void*)0))
  return (ENOMEM);

 error = bhnd_nvram_plist_replace(plist, prop);
 bhnd_nvram_prop_release(prop);

 return (error);
}
