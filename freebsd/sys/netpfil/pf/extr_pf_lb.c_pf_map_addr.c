
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pf_addr {int* addr32; } ;
struct pf_src_node {struct pf_addr raddr; } ;
struct pf_pool {int opts; int tblidx; struct pf_addr counter; struct pf_pooladdr* cur; int list; int key; } ;
struct pf_rule {struct pf_pool rpool; } ;
struct TYPE_7__ {struct pf_addr mask; struct pf_addr addr; } ;
struct TYPE_8__ {TYPE_1__ a; } ;
struct TYPE_10__ {TYPE_3__* dyn; int tbl; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ v; TYPE_4__ p; } ;
struct pf_pooladdr {TYPE_5__ addr; } ;
typedef int sa_family_t ;
struct TYPE_12__ {scalar_t__ debug; } ;
struct TYPE_9__ {int pfid_acnt4; int pfid_acnt6; int pfid_kt; struct pf_addr pfid_mask6; struct pf_addr pfid_addr6; struct pf_addr pfid_mask4; struct pf_addr pfid_addr4; } ;




 int PF_ACPY (struct pf_addr*,struct pf_addr*,int) ;
 scalar_t__ PF_ADDR_DYNIFTL ;
 scalar_t__ PF_ADDR_NOROUTE ;
 scalar_t__ PF_ADDR_TABLE ;
 scalar_t__ PF_AEQ (struct pf_addr*,struct pf_addr*,int) ;
 int PF_AINC (struct pf_addr*,int) ;
 scalar_t__ PF_AZERO (struct pf_addr*,int) ;
 scalar_t__ PF_DEBUG_MISC ;
 int PF_POOLMASK (struct pf_addr*,struct pf_addr*,struct pf_addr*,struct pf_addr*,int) ;





 int PF_POOL_STICKYADDR ;
 int PF_POOL_TYPEMASK ;
 struct pf_pooladdr* TAILQ_FIRST (int *) ;
 struct pf_pooladdr* TAILQ_NEXT (struct pf_pooladdr*,int ) ;
 TYPE_6__ V_pf_status ;
 int arc4random () ;
 int entries ;
 void* htonl (int ) ;
 struct pf_src_node* pf_find_src_node (struct pf_addr*,struct pf_rule*,int,int ) ;
 int pf_hash (struct pf_addr*,struct pf_addr*,int *,int) ;
 int pf_match_addr (int ,struct pf_addr*,struct pf_addr*,struct pf_addr*,int) ;
 int pf_print_host (struct pf_addr*,int ,int) ;
 int pfr_pool_get (int ,int*,struct pf_addr*,int) ;
 int printf (char*) ;

int
pf_map_addr(sa_family_t af, struct pf_rule *r, struct pf_addr *saddr,
    struct pf_addr *naddr, struct pf_addr *init_addr, struct pf_src_node **sn)
{
 struct pf_pool *rpool = &r->rpool;
 struct pf_addr *raddr = ((void*)0), *rmask = ((void*)0);



 if (*sn == ((void*)0) && r->rpool.opts & PF_POOL_STICKYADDR &&
     (r->rpool.opts & PF_POOL_TYPEMASK) != 131)
  *sn = pf_find_src_node(saddr, r, af, 0);





 if (*sn != ((void*)0) && !PF_AZERO(&(*sn)->raddr, af)) {



  if (PF_AEQ(naddr, &(*sn)->raddr, af))
   return (1);

  PF_ACPY(naddr, &(*sn)->raddr, af);
  if (V_pf_status.debug >= PF_DEBUG_MISC) {
   printf("pf_map_addr: src tracking maps ");
   pf_print_host(saddr, 0, af);
   printf(" to ");
   pf_print_host(naddr, 0, af);
   printf("\n");
  }
  return (0);
 }



 if (rpool->cur->addr.type == PF_ADDR_NOROUTE)
  return (1);
 if (rpool->cur->addr.type == PF_ADDR_DYNIFTL) {
  switch (af) {
  }
 } else if (rpool->cur->addr.type == PF_ADDR_TABLE) {
  if ((rpool->opts & PF_POOL_TYPEMASK) != 129)
   return (1);
 } else {
  raddr = &rpool->cur->addr.v.a.addr;
  rmask = &rpool->cur->addr.v.a.mask;
 }

 switch (rpool->opts & PF_POOL_TYPEMASK) {
 case 131:
  PF_ACPY(naddr, raddr, af);
  break;
 case 132:
  PF_POOLMASK(naddr, raddr, rmask, saddr, af);
  break;
 case 130:
  if (init_addr != ((void*)0) && PF_AZERO(init_addr, af)) {
   switch (af) {
   }
   PF_POOLMASK(naddr, raddr, rmask, &rpool->counter, af);
   PF_ACPY(init_addr, naddr, af);

  } else {
   PF_AINC(&rpool->counter, af);
   PF_POOLMASK(naddr, raddr, rmask, &rpool->counter, af);
  }
  break;
 case 128:
     {
  unsigned char hash[16];

  pf_hash(saddr, (struct pf_addr *)&hash, &rpool->key, af);
  PF_POOLMASK(naddr, raddr, rmask, (struct pf_addr *)&hash, af);
  break;
     }
 case 129:
     {
  struct pf_pooladdr *acur = rpool->cur;
  if (rpool->cur->addr.type == PF_ADDR_TABLE) {
   if (!pfr_pool_get(rpool->cur->addr.p.tbl,
       &rpool->tblidx, &rpool->counter, af))
    goto get_addr;
  } else if (rpool->cur->addr.type == PF_ADDR_DYNIFTL) {
   if (!pfr_pool_get(rpool->cur->addr.p.dyn->pfid_kt,
       &rpool->tblidx, &rpool->counter, af))
    goto get_addr;
  } else if (pf_match_addr(0, raddr, rmask, &rpool->counter, af))
   goto get_addr;

 try_next:
  if (TAILQ_NEXT(rpool->cur, entries) == ((void*)0))
   rpool->cur = TAILQ_FIRST(&rpool->list);
  else
   rpool->cur = TAILQ_NEXT(rpool->cur, entries);
  if (rpool->cur->addr.type == PF_ADDR_TABLE) {
   rpool->tblidx = -1;
   if (pfr_pool_get(rpool->cur->addr.p.tbl,
       &rpool->tblidx, &rpool->counter, af)) {

    if (rpool->cur != acur)
     goto try_next;
    return (1);
   }
  } else if (rpool->cur->addr.type == PF_ADDR_DYNIFTL) {
   rpool->tblidx = -1;
   if (pfr_pool_get(rpool->cur->addr.p.dyn->pfid_kt,
       &rpool->tblidx, &rpool->counter, af)) {

    if (rpool->cur != acur)
     goto try_next;
    return (1);
   }
  } else {
   raddr = &rpool->cur->addr.v.a.addr;
   rmask = &rpool->cur->addr.v.a.mask;
   PF_ACPY(&rpool->counter, raddr, af);
  }

 get_addr:
  PF_ACPY(naddr, &rpool->counter, af);
  if (init_addr != ((void*)0) && PF_AZERO(init_addr, af))
   PF_ACPY(init_addr, naddr, af);
  PF_AINC(&rpool->counter, af);
  break;
     }
 }
 if (*sn != ((void*)0))
  PF_ACPY(&(*sn)->raddr, naddr, af);

 if (V_pf_status.debug >= PF_DEBUG_MISC &&
     (rpool->opts & PF_POOL_TYPEMASK) != 131) {
  printf("pf_map_addr: selected address ");
  pf_print_host(naddr, 0, af);
  printf("\n");
 }

 return (0);
}
