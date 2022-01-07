
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int CT_FIXEDARRAY ;
 int ng_parse_composite (struct ng_parse_type const*,char*,int*,int const* const,int *,int*,int ) ;

__attribute__((used)) static int
ng_fixedarray_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 int off = 0;

 return ng_parse_composite(type,
     "[]", &off, start, buf, buflen, CT_FIXEDARRAY);
}
