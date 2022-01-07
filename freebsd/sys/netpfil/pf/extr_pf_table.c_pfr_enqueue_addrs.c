
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {int pfrw_cnt; struct pfr_kentryworkq* pfrw_workq; int pfrw_op; } ;
struct pfr_ktable {TYPE_2__* pfrkt_ip6; TYPE_1__* pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_4__ {int rh; scalar_t__ (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int rh; scalar_t__ (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;


 int PFRW_ENQUEUE ;
 int PFRW_SWEEP ;
 int SLIST_INIT (struct pfr_kentryworkq*) ;
 int bzero (struct pfr_walktree*,int) ;
 int pfr_walktree ;
 int printf (char*) ;
 scalar_t__ stub1 (int *,int ,struct pfr_walktree*) ;
 scalar_t__ stub2 (int *,int ,struct pfr_walktree*) ;

__attribute__((used)) static void
pfr_enqueue_addrs(struct pfr_ktable *kt, struct pfr_kentryworkq *workq,
 int *naddr, int sweep)
{
 struct pfr_walktree w;

 SLIST_INIT(workq);
 bzero(&w, sizeof(w));
 w.pfrw_op = sweep ? PFRW_SWEEP : PFRW_ENQUEUE;
 w.pfrw_workq = workq;
 if (kt->pfrkt_ip4 != ((void*)0))
  if (kt->pfrkt_ip4->rnh_walktree(&kt->pfrkt_ip4->rh,
      pfr_walktree, &w))
   printf("pfr_enqueue_addrs: IPv4 walktree failed.\n");
 if (kt->pfrkt_ip6 != ((void*)0))
  if (kt->pfrkt_ip6->rnh_walktree(&kt->pfrkt_ip6->rh,
      pfr_walktree, &w))
   printf("pfr_enqueue_addrs: IPv6 walktree failed.\n");
 if (naddr != ((void*)0))
  *naddr = w.pfrw_cnt;
}
