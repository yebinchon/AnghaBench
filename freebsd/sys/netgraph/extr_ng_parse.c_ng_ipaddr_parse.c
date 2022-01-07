
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int EINVAL ;
 int ng_int8_parse (int *,char const*,int*,int const* const,int * const,int*) ;
 int ng_parse_int8_type ;

__attribute__((used)) static int
ng_ipaddr_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 int i, error;

 for (i = 0; i < 4; i++) {
  if ((error = ng_int8_parse(&ng_parse_int8_type,
      s, off, start, buf + i, buflen)) != 0)
   return (error);
  if (i < 3 && s[*off] != '.')
   return (EINVAL);
  (*off)++;
 }
 *buflen = 4;
 return (0);
}
