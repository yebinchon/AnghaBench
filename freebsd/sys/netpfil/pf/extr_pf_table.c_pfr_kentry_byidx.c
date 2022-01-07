
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {int pfrw_cnt; struct pfr_kentry* pfrw_kentry; int pfrw_op; } ;
struct pfr_ktable {TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct TYPE_4__ {int rh; int (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int rh; int (* rnh_walktree ) (int *,int ,struct pfr_walktree*) ;} ;




 int PFRW_POOL_GET ;
 int bzero (struct pfr_walktree*,int) ;
 int pfr_walktree ;
 int stub1 (int *,int ,struct pfr_walktree*) ;
 int stub2 (int *,int ,struct pfr_walktree*) ;

__attribute__((used)) static struct pfr_kentry *
pfr_kentry_byidx(struct pfr_ktable *kt, int idx, int af)
{
 struct pfr_walktree w;

 bzero(&w, sizeof(w));
 w.pfrw_op = PFRW_POOL_GET;
 w.pfrw_cnt = idx;

 switch (af) {
 default:
  return (((void*)0));
 }
}
