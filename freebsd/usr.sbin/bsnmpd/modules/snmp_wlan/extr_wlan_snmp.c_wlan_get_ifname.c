
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint ;
struct asn_oid {size_t len; size_t* subs; } ;


 scalar_t__ IFNAMSIZ ;
 int memset (char*,int ,scalar_t__) ;

__attribute__((used)) static uint8_t *
wlan_get_ifname(const struct asn_oid *oid, uint sub, uint8_t *wname)
{
 uint32_t i;

 memset(wname, 0, IFNAMSIZ);

 if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >= IFNAMSIZ)
  return (((void*)0));

 for (i = 0; i < oid->subs[sub]; i++)
  wname[i] = oid->subs[sub + i + 1];
 wname[i] = '\0';

 return (wname);
}
