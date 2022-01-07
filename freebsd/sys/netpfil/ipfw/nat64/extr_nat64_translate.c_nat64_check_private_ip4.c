
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64_config {int flags; } ;
typedef int in_addr_t ;


 int NAT64_ALLOW_PRIVATE ;
 int NAT64_WKPFX ;
 int htonl (int) ;

int
nat64_check_private_ip4(const struct nat64_config *cfg, in_addr_t ia)
{

 if (cfg->flags & NAT64_ALLOW_PRIVATE)
  return (0);


 if (cfg->flags & NAT64_WKPFX) {

  if ((ia & htonl(0xff000000)) == htonl(0x0a000000) ||
      (ia & htonl(0xfff00000)) == htonl(0xac100000) ||
      (ia & htonl(0xffff0000)) == htonl(0xc0a80000))
   return (1);
  if ((ia & htonl(0xffffff00)) == htonl(0xc0000000) ||
      (ia & htonl(0xffffff00)) == htonl(0xc0586300) ||
      (ia & htonl(0xfffffe00)) == htonl(0xc6120000) ||
      (ia & htonl(0xffffff00)) == htonl(0xc0000200) ||
      (ia & htonl(0xfffffe00)) == htonl(0xc6336400) ||
      (ia & htonl(0xffffff00)) == htonl(0xcb007100))
   return (1);
 }
 return (0);
}
