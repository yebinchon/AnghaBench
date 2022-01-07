
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BHND_NVRAM_TYPE_STRING_ARRAY ;
 char const* bhnd_nvram_value_array_next (char const*,size_t,int ,char const*,size_t*) ;

const char *
bhnd_nvram_string_array_next(const char *inp, size_t ilen, const char *prev,
    size_t *olen)
{
 return (bhnd_nvram_value_array_next(inp, ilen,
     BHND_NVRAM_TYPE_STRING_ARRAY, prev, olen));
}
