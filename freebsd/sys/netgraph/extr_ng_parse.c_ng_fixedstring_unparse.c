
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {struct ng_parse_fixedstring_info* info; } ;
struct ng_parse_fixedstring_info {scalar_t__ bufSize; } ;


 int ng_string_unparse (struct ng_parse_type const*,int const*,int*,char*,int) ;

__attribute__((used)) static int
ng_fixedstring_unparse(const struct ng_parse_type *type,
 const u_char *data, int *off, char *cbuf, int cbuflen)
{
 const struct ng_parse_fixedstring_info *const fi = type->info;
 int error, temp = *off;

 if ((error = ng_string_unparse(type, data, &temp, cbuf, cbuflen)) != 0)
  return (error);
 *off += fi->bufSize;
 return (0);
}
