
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int BHND_NV_LOG (char*,int) ;
 int ENOMEM ;
 int bhnd_nvram_plist_append (int *,int *) ;
 int * bhnd_nvram_plist_new () ;
 int * bhnd_nvram_plist_next (int *,int *) ;
 int bhnd_nvram_plist_release (int *) ;

bhnd_nvram_plist *
bhnd_nvram_plist_copy(bhnd_nvram_plist *plist)
{
 bhnd_nvram_plist *copy;
 bhnd_nvram_prop *prop;
 int error;


 if ((copy = bhnd_nvram_plist_new()) == ((void*)0))
  return (((void*)0));


 prop = ((void*)0);
 while ((prop = bhnd_nvram_plist_next(plist, prop)) != ((void*)0)) {
  error = bhnd_nvram_plist_append(copy, prop);
  if (error) {
   if (error != ENOMEM) {
    BHND_NV_LOG("error copying property: %d\n",
        error);
   }

   bhnd_nvram_plist_release(copy);
   return (((void*)0));
  }
 }


 return (copy);
}
