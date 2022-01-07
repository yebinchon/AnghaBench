
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;


 int NM_OPT_SYNC_KLOOP_DIRECT_TX ;
 int sync_kloop_eventfds_all_mode (struct TestContext*,int ) ;

__attribute__((used)) static int
sync_kloop_eventfds_all_direct_tx(struct TestContext *ctx)
{
 return sync_kloop_eventfds_all_mode(ctx,
     NM_OPT_SYNC_KLOOP_DIRECT_TX);
}
