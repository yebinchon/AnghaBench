
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct asn_oid {size_t len; int* subs; } ;
typedef char int32_t ;


 int IFNAMSIZ ;

__attribute__((used)) static int
bridge_port_index_decode(const struct asn_oid *oid, uint sub,
 char *b_name, int32_t *idx)
{
 uint i;

 if (oid->len - sub != oid->subs[sub] + 2 ||
     oid->subs[sub] >= IFNAMSIZ)
  return (-1);

 for (i = 0; i < oid->subs[sub]; i++)
  b_name[i] = oid->subs[sub + i + 1];
 b_name[i] = '\0';

 *idx = oid->subs[sub + i + 1];
 return (0);
}
