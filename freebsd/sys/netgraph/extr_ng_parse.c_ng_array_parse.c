
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int CT_ARRAY ;
 int ng_parse_composite (struct ng_parse_type const*,char const*,int*,int const* const,int * const,int*,int ) ;

__attribute__((used)) static int
ng_array_parse(const struct ng_parse_type *type,
 const char *s, int *off, const u_char *const start,
 u_char *const buf, int *buflen)
{
 return ng_parse_composite(type, s, off, start, buf, buflen, CT_ARRAY);
}
