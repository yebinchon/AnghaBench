
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bhnd_nv_isspace (char const) ;

size_t
bhnd_nvram_parse_field(const char **inp, size_t ilen, char delim)
{
 const char *p, *sp;


 for (sp = *inp; (size_t)(sp-*inp) < ilen && bhnd_nv_isspace(*sp); sp++)
  continue;

 *inp = sp;


 for (p = *inp; (size_t)(p - *inp) < ilen; p++) {
  if (*p == delim || *p == '\0')
   break;
 }

 return (p - *inp);
}
