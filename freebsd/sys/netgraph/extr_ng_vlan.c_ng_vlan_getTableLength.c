
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct ng_vlan_table {int n; } ;
struct ng_parse_type {int dummy; } ;



__attribute__((used)) static int
ng_vlan_getTableLength(const struct ng_parse_type *type,
    const u_char *start, const u_char *buf)
{
 const struct ng_vlan_table *const table =
     (const struct ng_vlan_table *)(buf - sizeof(u_int32_t));

 return table->n;
}
