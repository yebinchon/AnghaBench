
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bhnd_nv_isspace (char const) ;
 size_t bhnd_nvram_parse_field (char const**,size_t,char) ;

size_t
bhnd_nvram_trim_field(const char **inp, size_t ilen, char delim)
{
 const char *sp;
 size_t plen;

 plen = bhnd_nvram_parse_field(inp, ilen, delim);


 sp = *inp;
 while (plen > 0) {
  if (!bhnd_nv_isspace(*(sp + plen - 1)))
   break;

  plen--;
 }

 return (plen);
}
