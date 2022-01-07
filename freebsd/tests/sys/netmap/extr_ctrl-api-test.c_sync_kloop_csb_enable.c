
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int nr_flags; } ;


 int NR_EXCLUSIVE ;
 int csb_enable (struct TestContext*) ;
 int port_register_hwall (struct TestContext*) ;
 int sync_kloop_start_stop (struct TestContext*) ;

__attribute__((used)) static int
sync_kloop_csb_enable(struct TestContext *ctx)
{
 int ret;

 ctx->nr_flags |= NR_EXCLUSIVE;
 ret = port_register_hwall(ctx);
 if (ret != 0) {
  return ret;
 }

 ret = csb_enable(ctx);
 if (ret != 0) {
  return ret;
 }

 return sync_kloop_start_stop(ctx);
}
