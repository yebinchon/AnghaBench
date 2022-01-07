
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct athstatfoo_p {int req; } ;
struct athstatfoo {int dummy; } ;


 scalar_t__ ath_driver_req_zero_stats (int *) ;
 int exit (int) ;

__attribute__((used)) static void
ath_zerostats(struct athstatfoo *wf0)
{
 struct athstatfoo_p *wf = (struct athstatfoo_p *) wf0;

 if (ath_driver_req_zero_stats(&wf->req) < 0)
  exit(-1);
}
