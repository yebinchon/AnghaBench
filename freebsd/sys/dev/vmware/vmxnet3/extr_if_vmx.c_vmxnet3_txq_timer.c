
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int if_ctx_t ;


 int iflib_get_softc (int ) ;
 int vmxnet3_refresh_host_stats (int ) ;

__attribute__((used)) static void
vmxnet3_txq_timer(if_ctx_t ctx, uint16_t qid)
{

 if (qid == 0)
  vmxnet3_refresh_host_stats(iflib_get_softc(ctx));
}
