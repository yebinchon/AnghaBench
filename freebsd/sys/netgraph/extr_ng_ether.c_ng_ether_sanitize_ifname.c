
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFNAMSIZ ;

__attribute__((used)) static void
ng_ether_sanitize_ifname(const char *ifname, char *name)
{
 int i;

 for (i = 0; i < IFNAMSIZ; i++) {
  if (ifname[i] == '.' || ifname[i] == ':')
   name[i] = '_';
  else
   name[i] = ifname[i];
  if (name[i] == '\0')
   break;
 }
}
