
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint ;
struct tp_entry {int dummy; } ;
struct bridge_if {int dummy; } ;
struct asn_oid {int len; int* subs; } ;


 int ETHER_ADDR_LEN ;
 struct tp_entry* bridge_addrs_find (int*,struct bridge_if*) ;

__attribute__((used)) static struct tp_entry *
bridge_addrs_get(const struct asn_oid *oid, uint sub,
 struct bridge_if *bif)
{
 int i;
 uint8_t tp_addr[ETHER_ADDR_LEN];

 if (oid->len - sub != ETHER_ADDR_LEN + 1 ||
     oid->subs[sub] != ETHER_ADDR_LEN)
  return (((void*)0));

 for (i = 0; i < ETHER_ADDR_LEN; i++)
  tp_addr[i] = oid->subs[sub + i + 1];

 return (bridge_addrs_find(tp_addr, bif));
}
