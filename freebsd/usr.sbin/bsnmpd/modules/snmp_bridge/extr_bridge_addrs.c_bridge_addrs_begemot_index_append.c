
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct tp_entry {int* tp_addr; int sysindex; } ;
struct asn_oid {int* subs; scalar_t__ len; } ;


 int ETHER_ADDR_LEN ;
 char* bridge_if_find_name (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
bridge_addrs_begemot_index_append(struct asn_oid *oid, uint sub,
 const struct tp_entry *te)
{
 uint i, n_len;
 const char *b_name;

 if ((b_name = bridge_if_find_name(te->sysindex)) == ((void*)0))
  return (-1);

 n_len = strlen(b_name);
 oid->len = sub++;
 oid->subs[oid->len++] = n_len;

 for (i = 1; i <= n_len; i++)
  oid->subs[oid->len++] = b_name[i - 1];

 oid->subs[oid->len++] = ETHER_ADDR_LEN;
 for (i = 1 ; i <= ETHER_ADDR_LEN; i++)
  oid->subs[oid->len++] = te->tp_addr[i - 1];

 return (0);
}
