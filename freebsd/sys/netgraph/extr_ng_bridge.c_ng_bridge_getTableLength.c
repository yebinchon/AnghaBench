
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct ng_parse_type {int dummy; } ;
struct ng_bridge_host_ary {int numHosts; } ;



__attribute__((used)) static int
ng_bridge_getTableLength(const struct ng_parse_type *type,
 const u_char *start, const u_char *buf)
{
 const struct ng_bridge_host_ary *const hary
     = (const struct ng_bridge_host_ary *)(buf - sizeof(u_int32_t));

 return hary->numHosts;
}
