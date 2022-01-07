
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;
typedef int bhnd_nvram_data_class ;


 int BHND_NVRAM_TYPE_STRING ;
 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,char const*,int ,int) ;
 int EFTYPE ;
 int ENOMEM ;
 size_t SIZE_MAX ;
 int * bhnd_nvram_plist_next (int *,int *) ;
 int bhnd_nvram_prop_encode (int *,char*,size_t*,int ) ;
 char* bhnd_nvram_prop_name (int *) ;
 int bhnd_nvram_type_name (int ) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int
bhnd_nvram_btxt_serialize(bhnd_nvram_data_class *cls, bhnd_nvram_plist *props,
    bhnd_nvram_plist *options, void *outp, size_t *olen)
{
 bhnd_nvram_prop *prop;
 size_t limit, nbytes;
 int error;


 if (outp != ((void*)0))
  limit = *olen;
 else
  limit = 0;

 nbytes = 0;


 prop = ((void*)0);
 while ((prop = bhnd_nvram_plist_next(props, prop)) != ((void*)0)) {
  const char *name;
  char *p;
  size_t prop_limit;
  size_t name_len, value_len;

  if (outp == ((void*)0) || limit < nbytes) {
   p = ((void*)0);
   prop_limit = 0;
  } else {
   p = ((char *)outp) + nbytes;
   prop_limit = limit - nbytes;
  }


  name = bhnd_nvram_prop_name(prop);
  name_len = strlen(name) + 1;

  if (prop_limit > name_len) {
   memcpy(p, name, name_len - 1);
   p[name_len - 1] = '=';

   prop_limit -= name_len;
   p += name_len;
  } else {
   prop_limit = 0;
   p = ((void*)0);
  }


  if (SIZE_MAX - nbytes < name_len)
   return (EFTYPE);

  nbytes += name_len;



  value_len = prop_limit;
  error = bhnd_nvram_prop_encode(prop, p, &value_len,
      BHND_NVRAM_TYPE_STRING);
  if (p != ((void*)0) && error == 0) {

   BHND_NV_ASSERT(value_len > 0, ("string length missing "
       "minimum required trailing NUL"));

   *(p + (value_len - 1)) = '\n';
  } else if (error && error != ENOMEM) {



   BHND_NV_LOG("error serializing %s to required type "
       "%s: %d\n", name,
       bhnd_nvram_type_name(BHND_NVRAM_TYPE_STRING),
       error);
   return (error);
  }


  if (SIZE_MAX - nbytes < value_len)
   return (EFTYPE);

  nbytes += value_len;
 }


 *olen = nbytes;
 if (limit < *olen) {
  if (outp == ((void*)0))
   return (0);

  return (ENOMEM);
 }

 return (0);
}
