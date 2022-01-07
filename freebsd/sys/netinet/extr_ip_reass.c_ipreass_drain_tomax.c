
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipq {int dummy; } ;
struct TYPE_3__ {scalar_t__ count; int head; } ;


 int IPQ_LOCK (int) ;
 int IPQ_UNLOCK (int) ;
 int IPREASS_NHASH ;
 struct ipq* TAILQ_LAST (int *,int ) ;
 TYPE_1__* V_ipq ;
 int V_ipq_zone ;
 scalar_t__ V_ipreass_maxbucketsize ;
 int ipq_timeout (TYPE_1__*,struct ipq*) ;
 int ipqhead ;
 int uma_zone_get_cur (int ) ;
 int uma_zone_get_max (int ) ;

__attribute__((used)) static void
ipreass_drain_tomax(void)
{
 struct ipq *fp;
 int target;






 for (int i = 0; i < IPREASS_NHASH; i++) {
  IPQ_LOCK(i);
  while (V_ipq[i].count > V_ipreass_maxbucketsize &&
      (fp = TAILQ_LAST(&V_ipq[i].head, ipqhead)) != ((void*)0))
   ipq_timeout(&V_ipq[i], fp);
  IPQ_UNLOCK(i);
 }







 target = uma_zone_get_max(V_ipq_zone);
 while (uma_zone_get_cur(V_ipq_zone) > target) {
  for (int i = 0; i < IPREASS_NHASH; i++) {
   IPQ_LOCK(i);
   fp = TAILQ_LAST(&V_ipq[i].head, ipqhead);
   if (fp != ((void*)0))
    ipq_timeout(&V_ipq[i], fp);
   IPQ_UNLOCK(i);
  }
 }
}
