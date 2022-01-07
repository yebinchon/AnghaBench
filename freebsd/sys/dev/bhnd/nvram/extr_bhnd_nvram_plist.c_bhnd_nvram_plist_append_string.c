
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bhnd_nvram_plist ;


 int BHND_NVRAM_TYPE_STRING ;
 int bhnd_nvram_plist_append_bytes (int *,char const*,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

int
bhnd_nvram_plist_append_string(bhnd_nvram_plist *plist, const char *name,
    const char *val)
{
 return (bhnd_nvram_plist_append_bytes(plist, name, val, strlen(val)+1,
     BHND_NVRAM_TYPE_STRING));
}
