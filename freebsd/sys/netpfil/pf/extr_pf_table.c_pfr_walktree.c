
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sockaddr_union {int dummy; } sockaddr_union ;
struct radix_node {int dummy; } ;
struct pfr_walktree {int pfrw_op; TYPE_1__* pfrw_dyn; struct pfr_kentry* pfrw_kentry; int pfrw_cnt; int pfrw_astats; int pfrw_free; int pfrw_addr; int pfrw_workq; } ;
struct pfr_kentry {union sockaddr_union pfrke_sa; int pfrke_net; int pfrke_af; int pfrke_not; int pfrke_mark; } ;
struct pfr_astats {int dummy; } ;
typedef int as ;
struct TYPE_2__ {void* pfid_mask6; void* pfid_addr6; int pfid_acnt6; void* pfid_mask4; void* pfid_addr4; int pfid_acnt4; } ;


 int AF_INET ;
 int AF_INET6 ;







 int SLIST_INSERT_HEAD (int ,struct pfr_kentry*,int ) ;
 void** SUNION2PF (union sockaddr_union*,int ) ;
 int bcopy (struct pfr_astats*,int ,int) ;
 int pfr_copyout_addr (int ,struct pfr_kentry*) ;
 int pfr_copyout_astats (struct pfr_astats*,struct pfr_kentry*,struct pfr_walktree*) ;
 int pfr_prepare_network (union sockaddr_union*,int ,int ) ;
 int pfrke_workq ;

__attribute__((used)) static int
pfr_walktree(struct radix_node *rn, void *arg)
{
 struct pfr_kentry *ke = (struct pfr_kentry *)rn;
 struct pfr_walktree *w = arg;

 switch (w->pfrw_op) {
 case 130:
  ke->pfrke_mark = 0;
  break;
 case 128:
  if (ke->pfrke_mark)
   break;

 case 133:
  SLIST_INSERT_HEAD(w->pfrw_workq, ke, pfrke_workq);
  w->pfrw_cnt++;
  break;
 case 132:
  if (w->pfrw_free-- > 0) {
   pfr_copyout_addr(w->pfrw_addr, ke);
   w->pfrw_addr++;
  }
  break;
 case 131:
  if (w->pfrw_free-- > 0) {
   struct pfr_astats as;

   pfr_copyout_astats(&as, ke, w);

   bcopy(&as, w->pfrw_astats, sizeof(as));
   w->pfrw_astats++;
  }
  break;
 case 129:
  if (ke->pfrke_not)
   break;
  if (!w->pfrw_cnt--) {
   w->pfrw_kentry = ke;
   return (1);
  }
  break;
 case 134:
     {
  union sockaddr_union pfr_mask;

  if (ke->pfrke_af == AF_INET) {
   if (w->pfrw_dyn->pfid_acnt4++ > 0)
    break;
   pfr_prepare_network(&pfr_mask, AF_INET, ke->pfrke_net);
   w->pfrw_dyn->pfid_addr4 = *SUNION2PF(&ke->pfrke_sa,
       AF_INET);
   w->pfrw_dyn->pfid_mask4 = *SUNION2PF(&pfr_mask,
       AF_INET);
  } else if (ke->pfrke_af == AF_INET6){
   if (w->pfrw_dyn->pfid_acnt6++ > 0)
    break;
   pfr_prepare_network(&pfr_mask, AF_INET6, ke->pfrke_net);
   w->pfrw_dyn->pfid_addr6 = *SUNION2PF(&ke->pfrke_sa,
       AF_INET6);
   w->pfrw_dyn->pfid_mask6 = *SUNION2PF(&pfr_mask,
       AF_INET6);
  }
  break;
     }
 }
 return (0);
}
