
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;



__attribute__((used)) static int
ng_generic_list_getLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 return *((const u_int32_t *)(buf - 4));
}
