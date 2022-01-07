
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nat64lsn_job_item {int dummy; } ;
struct TYPE_2__ {int stats; } ;
struct nat64lsn_cfg {int jcallout; int jlen; TYPE_1__ base; int jhead; } ;


 int JQUEUE_LOCK () ;
 int JQUEUE_UNLOCK () ;
 int NAT64STAT_INC (int *,int ) ;
 int STAILQ_INSERT_TAIL (int *,struct nat64lsn_job_item*,int ) ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int,int ,struct nat64lsn_cfg*) ;
 int entries ;
 int jrequests ;
 int nat64lsn_do_request ;

__attribute__((used)) static void
nat64lsn_enqueue_job(struct nat64lsn_cfg *cfg, struct nat64lsn_job_item *ji)
{

 JQUEUE_LOCK();
 STAILQ_INSERT_TAIL(&cfg->jhead, ji, entries);
 NAT64STAT_INC(&cfg->base.stats, jrequests);
 cfg->jlen++;

 if (callout_pending(&cfg->jcallout) == 0)
  callout_reset(&cfg->jcallout, 1, nat64lsn_do_request, cfg);
 JQUEUE_UNLOCK();
}
