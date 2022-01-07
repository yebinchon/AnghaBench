
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nmreq_option {size_t nro_size; scalar_t__ nro_status; int nro_reqtype; scalar_t__ nro_next; } ;
struct nmreq_opt_sync_kloop_mode {struct nmreq_option nro_opt; int mode; } ;
struct nmreq_opt_sync_kloop_eventfds {struct nmreq_option nro_opt; TYPE_1__* eventfds; } ;
struct TestContext {int sync_kloop_mode; } ;
typedef int modeopt ;
struct TYPE_2__ {int ioeventfd; int irqfd; } ;


 scalar_t__ EOPNOTSUPP ;
 int NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS ;
 int NETMAP_REQ_OPT_SYNC_KLOOP_MODE ;
 struct nmreq_opt_sync_kloop_eventfds* calloc (int,size_t) ;
 int checkoption (struct nmreq_option*,struct nmreq_option*) ;
 int clear_options (struct TestContext*) ;
 int eventfd (int ,int ) ;
 int free (struct nmreq_opt_sync_kloop_eventfds*) ;
 int memset (struct nmreq_opt_sync_kloop_mode*,int ,int) ;
 int num_registered_rings (struct TestContext*) ;
 int push_option (struct nmreq_option*,struct TestContext*) ;
 int sync_kloop_start_stop (struct TestContext*) ;

__attribute__((used)) static int
sync_kloop_eventfds(struct TestContext *ctx)
{
 struct nmreq_opt_sync_kloop_eventfds *evopt = ((void*)0);
 struct nmreq_opt_sync_kloop_mode modeopt;
 struct nmreq_option evsave;
 int num_entries;
 size_t opt_size;
 int ret, i;

 memset(&modeopt, 0, sizeof(modeopt));
 modeopt.nro_opt.nro_reqtype = NETMAP_REQ_OPT_SYNC_KLOOP_MODE;
 modeopt.mode = ctx->sync_kloop_mode;
 push_option(&modeopt.nro_opt, ctx);

 num_entries = num_registered_rings(ctx);
 opt_size = sizeof(*evopt) + num_entries * sizeof(evopt->eventfds[0]);
 evopt = calloc(1, opt_size);
 evopt->nro_opt.nro_next = 0;
 evopt->nro_opt.nro_reqtype = NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS;
 evopt->nro_opt.nro_status = 0;
 evopt->nro_opt.nro_size = opt_size;
 for (i = 0; i < num_entries; i++) {
  int efd = eventfd(0, 0);

  evopt->eventfds[i].ioeventfd = efd;
  efd = eventfd(0, 0);
  evopt->eventfds[i].irqfd = efd;
 }

 push_option(&evopt->nro_opt, ctx);
 evsave = evopt->nro_opt;

 ret = sync_kloop_start_stop(ctx);
 if (ret != 0) {
  free(evopt);
  clear_options(ctx);
  return ret;
 }

 evsave.nro_status = 0;




 ret = checkoption(&evopt->nro_opt, &evsave);
 free(evopt);
 clear_options(ctx);

 return ret;
}
