
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_prop ;
typedef int bhnd_nvram_plist ;


 int bhnd_nvram_plist_append (int *,int *) ;
 int * bhnd_nvram_plist_next (int *,int *) ;

int
bhnd_nvram_plist_append_list(bhnd_nvram_plist *plist, bhnd_nvram_plist *tail)
{
 bhnd_nvram_prop *p;
 int error;

 p = ((void*)0);
 while ((p = bhnd_nvram_plist_next(tail, p)) != ((void*)0)) {
  if ((error = bhnd_nvram_plist_append(plist, p)))
   return (error);
 }

 return (0);
}
