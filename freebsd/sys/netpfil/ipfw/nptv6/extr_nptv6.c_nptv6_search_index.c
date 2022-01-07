
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nptv6_cfg {int flags; } ;
struct in6_addr {int* s6_addr16; scalar_t__* s6_addr32; } ;


 int NPTV6_48PLEN ;

__attribute__((used)) static int
nptv6_search_index(struct nptv6_cfg *cfg, struct in6_addr *a)
{
 int idx;

 if (cfg->flags & NPTV6_48PLEN)
  return (3);


 for (idx = 4; idx < 8; idx++)
  if (a->s6_addr16[idx] != 0xffff)
   break;






 if (idx == 8 ||
     (a->s6_addr32[2] == 0 && a->s6_addr32[3] == 0))
  return (-1);
 return (idx);
}
