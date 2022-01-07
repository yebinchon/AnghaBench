
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {int pfrw_op; } ;
struct pfr_ktable {TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct TYPE_4__ {int rh; scalar_t__ (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int rh; scalar_t__ (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;


 int PFRW_MARK ;
 int bzero (struct pfr_walktree*,int) ;
 int pfr_walktree ;
 int printf (char*) ;
 scalar_t__ stub1 (int *,int ,struct pfr_walktree*) ;
 scalar_t__ stub2 (int *,int ,struct pfr_walktree*) ;

__attribute__((used)) static void
pfr_mark_addrs(struct pfr_ktable *kt)
{
 struct pfr_walktree w;

 bzero(&w, sizeof(w));
 w.pfrw_op = PFRW_MARK;
 if (kt->pfrkt_ip4->rnh_walktree(&kt->pfrkt_ip4->rh, pfr_walktree, &w))
  printf("pfr_mark_addrs: IPv4 walktree failed.\n");
 if (kt->pfrkt_ip6->rnh_walktree(&kt->pfrkt_ip6->rh, pfr_walktree, &w))
  printf("pfr_mark_addrs: IPv6 walktree failed.\n");
}
