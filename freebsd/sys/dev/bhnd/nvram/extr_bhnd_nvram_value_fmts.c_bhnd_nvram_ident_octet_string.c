
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bhnd_nv_isxdigit (char const) ;
 char* memchr (char const*,char const,size_t) ;

__attribute__((used)) static bool
bhnd_nvram_ident_octet_string(const char *inp, size_t ilen, char *delim,
    size_t *nelem)
{
 size_t elem_count;
 size_t max_elem_count, min_elem_count;
 size_t field_count;
 char idelim;

 field_count = 0;



 min_elem_count = 2;
 max_elem_count = 2;



 for (const char *d = ":-";; d++) {
  const char *loc;


  if (*d == '\0')
   return (0);


  if ((loc = memchr(inp, *d, ilen)) == ((void*)0))
   continue;


  idelim = *loc;
  break;
 }



 if (idelim == '-')
  min_elem_count = 2;



 elem_count = 0;
 for (const char *p = inp; (size_t)(p - inp) < ilen; p++) {
  switch (*p) {
  case ':':
  case '-':
  case '\0':


   if (*p != '\0' && *p != idelim)
    return (0);


   if (elem_count < min_elem_count)
    return (0);


   elem_count = 0;


   field_count++;
   break;
  default:

   if (elem_count >= max_elem_count)
    return (0);


   if (!bhnd_nv_isxdigit(*p))
    return (0);

   elem_count++;
   break;
  }
 }

 if (delim != ((void*)0))
  *delim = idelim;

 if (nelem != ((void*)0))
  *nelem = field_count;

 return (1);
}
