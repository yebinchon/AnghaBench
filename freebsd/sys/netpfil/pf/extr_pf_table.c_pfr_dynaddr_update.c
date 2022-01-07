
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {struct pfi_dynaddr* pfrw_dyn; int pfrw_op; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfi_dynaddr {scalar_t__ pfid_af; scalar_t__ pfid_acnt6; scalar_t__ pfid_acnt4; } ;
struct TYPE_4__ {int rh; int (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int rh; int (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int PFRW_DYNADDR_UPDATE ;
 int bzero (struct pfr_walktree*,int) ;
 int pfr_walktree ;
 int stub1 (int *,int ,struct pfr_walktree*) ;
 int stub2 (int *,int ,struct pfr_walktree*) ;

void
pfr_dynaddr_update(struct pfr_ktable *kt, struct pfi_dynaddr *dyn)
{
 struct pfr_walktree w;

 bzero(&w, sizeof(w));
 w.pfrw_op = PFRW_DYNADDR_UPDATE;
 w.pfrw_dyn = dyn;

 dyn->pfid_acnt4 = 0;
 dyn->pfid_acnt6 = 0;
 if (!dyn->pfid_af || dyn->pfid_af == AF_INET)
  kt->pfrkt_ip4->rnh_walktree(&kt->pfrkt_ip4->rh, pfr_walktree, &w);
 if (!dyn->pfid_af || dyn->pfid_af == AF_INET6)
  kt->pfrkt_ip6->rnh_walktree(&kt->pfrkt_ip6->rh, pfr_walktree, &w);
}
