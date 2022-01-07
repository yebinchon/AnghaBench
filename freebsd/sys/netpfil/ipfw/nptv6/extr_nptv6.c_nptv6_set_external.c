
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct nptv6_cfg {int flags; int mask; struct in6_addr external; } ;


 int IN6_MASK_ADDR (struct in6_addr*,int *) ;
 int NPTV6_READY ;
 int nptv6_calculate_adjustment (struct nptv6_cfg*) ;

__attribute__((used)) static void
nptv6_set_external(struct nptv6_cfg *cfg, struct in6_addr *addr)
{

 cfg->external = *addr;
 IN6_MASK_ADDR(&cfg->external, &cfg->mask);
 nptv6_calculate_adjustment(cfg);
 cfg->flags |= NPTV6_READY;
}
