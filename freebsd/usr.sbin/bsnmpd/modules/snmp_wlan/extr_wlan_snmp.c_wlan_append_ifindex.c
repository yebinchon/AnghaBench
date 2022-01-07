
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef size_t uint ;
struct wlan_iface {size_t* wname; } ;
struct asn_oid {size_t len; size_t* subs; } ;


 size_t strlen (size_t*) ;

__attribute__((used)) static void
wlan_append_ifindex(struct asn_oid *oid, uint sub, const struct wlan_iface *w)
{
 uint32_t i;

 oid->len = sub + strlen(w->wname) + 1;
 oid->subs[sub] = strlen(w->wname);
 for (i = 1; i <= strlen(w->wname); i++)
  oid->subs[sub + i] = w->wname[i - 1];
}
