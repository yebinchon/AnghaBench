
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_out_size; void* ad_out_data; int ad_id; } ;
struct athstatfoo_p {int optstats; TYPE_1__ atd; int req; } ;
struct _athstats {int ani_stats; int ani_state; int ath; } ;
typedef void* caddr_t ;


 int ATHSTATS_ANI ;
 int HAL_DIAG_ANI_CURRENT ;
 int HAL_DIAG_ANI_STATS ;
 int SIOCGATHDIAG ;
 scalar_t__ ath_driver_req_fetch_diag (int *,int ,TYPE_1__*) ;
 scalar_t__ ath_driver_req_fetch_stats (int *,int *) ;
 int exit (int) ;

__attribute__((used)) static void
ath_collect(struct athstatfoo_p *wf, struct _athstats *stats)
{

 if (ath_driver_req_fetch_stats(&wf->req, &stats->ath) < 0)
  exit(1);
}
