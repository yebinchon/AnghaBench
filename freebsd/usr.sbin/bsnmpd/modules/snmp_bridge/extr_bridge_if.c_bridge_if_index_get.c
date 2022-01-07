
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct bridge_if {int dummy; } ;
struct asn_oid {size_t len; int* subs; } ;


 int IFNAMSIZ ;
 struct bridge_if* bridge_if_find_ifname (char*) ;

__attribute__((used)) static struct bridge_if *
bridge_if_index_get(const struct asn_oid *oid, uint sub)
{
 uint i;
 char bif_name[IFNAMSIZ];

 if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >= IFNAMSIZ)
  return (((void*)0));

 for (i = 0; i < oid->subs[sub]; i++)
  bif_name[i] = oid->subs[sub + i + 1];
 bif_name[i] = '\0';

 return (bridge_if_find_ifname(bif_name));
}
