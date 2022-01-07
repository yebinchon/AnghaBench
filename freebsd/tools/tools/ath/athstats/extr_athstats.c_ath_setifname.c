
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_name; } ;
struct athstatfoo_p {int optstats; TYPE_1__ atd; int req; } ;
struct athstatfoo {int dummy; } ;


 int ATHSTATS_ANI ;
 int ath_driver_req_close (int *) ;
 int ath_driver_req_open (int *,char const*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
ath_setifname(struct athstatfoo *wf0, const char *ifname)
{
 struct athstatfoo_p *wf = (struct athstatfoo_p *) wf0;

 ath_driver_req_close(&wf->req);
 (void) ath_driver_req_open(&wf->req, ifname);




}
