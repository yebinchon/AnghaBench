
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct asn_oid {size_t len; int* subs; } ;


 int IFNAMSIZ ;

__attribute__((used)) static char *
bridge_name_index_get(const struct asn_oid *oid, uint sub, char *b_name)
{
 uint i;

 if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >= IFNAMSIZ)
  return (((void*)0));

 for (i = 0; i < oid->subs[sub]; i++)
  b_name[i] = oid->subs[sub + i + 1];
 b_name[i] = '\0';

 return (b_name);
}
