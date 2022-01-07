
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int CT_STRUCT ;
 int ng_unparse_composite (struct ng_parse_type const*,int const*,int*,char*,int,int ) ;

__attribute__((used)) static int
ng_struct_unparse(const struct ng_parse_type *type,
 const u_char *data, int *off, char *cbuf, int cbuflen)
{
 return ng_unparse_composite(type, data, off, cbuf, cbuflen, CT_STRUCT);
}
