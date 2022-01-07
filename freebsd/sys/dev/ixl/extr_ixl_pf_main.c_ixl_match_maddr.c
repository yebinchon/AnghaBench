
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u8 ;
struct sockaddr_dl {int dummy; } ;
struct ixl_mac_filter {int macaddr; } ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 scalar_t__ cmp_etheraddr (int ,int *) ;

__attribute__((used)) static u_int
ixl_match_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct ixl_mac_filter *f = arg;

 if (cmp_etheraddr(f->macaddr, (u8 *)LLADDR(sdl)))
  return (1);
 else
  return (0);
}
