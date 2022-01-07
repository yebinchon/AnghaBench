
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_opt_csb {int dummy; } ;
struct TestContext {int nr_flags; } ;


 int NR_RX_RINGS_ONLY ;
 int clear_options (struct TestContext*) ;
 int port_register_hwall_rx (struct TestContext*) ;
 int push_csb_option (struct TestContext*,struct nmreq_opt_csb*) ;
 scalar_t__ sync_kloop_eventfds (struct TestContext*) ;

__attribute__((used)) static int
sync_kloop_eventfds_mismatch(struct TestContext *ctx)
{
 struct nmreq_opt_csb opt;
 int ret;

 ret = push_csb_option(ctx, &opt);
 if (ret != 0) {
  return ret;
 }

 ret = port_register_hwall_rx(ctx);
 if (ret != 0) {
  return ret;
 }
 clear_options(ctx);





 ctx->nr_flags &= ~NR_RX_RINGS_ONLY;

 return (sync_kloop_eventfds(ctx) != 0) ? 0 : -1;
}
