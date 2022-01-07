
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bhnd_nvram_plist ;


 int BHND_NVRAM_TYPE_UINT16 ;
 int bhnd_nvram_plist_get_encoded (int *,char const*,int *,int,int ) ;

int
bhnd_nvram_plist_get_uint16(bhnd_nvram_plist *plist, const char *name,
    uint16_t *val)
{
 return (bhnd_nvram_plist_get_encoded(plist, name, val, sizeof(*val),
     BHND_NVRAM_TYPE_UINT16));
}
