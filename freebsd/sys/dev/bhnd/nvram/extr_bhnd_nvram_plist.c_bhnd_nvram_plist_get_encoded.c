
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_type ;
typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int ENOENT ;
 int * bhnd_nvram_plist_get_prop (int *,char const*) ;
 int bhnd_nvram_prop_encode (int *,void*,size_t*,int ) ;

int
bhnd_nvram_plist_get_encoded(bhnd_nvram_plist *plist, const char *name,
    void *outp, size_t olen, bhnd_nvram_type otype)
{
 bhnd_nvram_prop *prop;

 if ((prop = bhnd_nvram_plist_get_prop(plist, name)) == ((void*)0))
  return (ENOENT);

 return (bhnd_nvram_prop_encode(prop, outp, &olen, otype));
}
