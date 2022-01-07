
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int (* private ) (struct ng_parse_type const*,int const*,int const*) ;} ;
typedef int (* ng_parse_array_getLength_t ) (struct ng_parse_type const*,int const*,int const*) ;


 int stub1 (struct ng_parse_type const*,int const*,int const*) ;

__attribute__((used)) static int
ng_parse_bytearray_subtype_getLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 ng_parse_array_getLength_t *const getLength = type->private;

 return (*getLength)(type, start, buf);
}
