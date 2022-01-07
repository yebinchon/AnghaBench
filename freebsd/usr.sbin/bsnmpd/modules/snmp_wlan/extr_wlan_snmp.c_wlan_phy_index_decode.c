
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t len; int* subs; } ;


 int IFNAMSIZ ;

__attribute__((used)) static int
wlan_phy_index_decode(const struct asn_oid *oid, uint sub, char *wname,
    uint32_t *phy)
{
 uint32_t i;

 if (oid->len - sub != oid->subs[sub] + 2 || oid->subs[sub] >= IFNAMSIZ)
  return (-1);

 for (i = 0; i < oid->subs[sub]; i++)
  wname[i] = oid->subs[sub + i + 1];
 wname[i] = '\0';

 *phy = oid->subs[sub + oid->subs[sub] + 1];
 return (0);
}
