
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;


 int port_register_hwall (struct TestContext*) ;
 scalar_t__ sync_kloop_start_stop (struct TestContext*) ;

__attribute__((used)) static int
sync_kloop_nocsb(struct TestContext *ctx)
{
 int ret;

 ret = port_register_hwall(ctx);
 if (ret != 0) {
  return ret;
 }



 return sync_kloop_start_stop(ctx) != 0 ? 0 : -1;
}
