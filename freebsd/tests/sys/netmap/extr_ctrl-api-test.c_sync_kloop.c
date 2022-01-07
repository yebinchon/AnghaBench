
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;


 int csb_mode (struct TestContext*) ;
 int sync_kloop_start_stop (struct TestContext*) ;

__attribute__((used)) static int
sync_kloop(struct TestContext *ctx)
{
 int ret;

 ret = csb_mode(ctx);
 if (ret != 0) {
  return ret;
 }

 return sync_kloop_start_stop(ctx);
}
