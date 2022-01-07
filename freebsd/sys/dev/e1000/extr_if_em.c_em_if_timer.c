
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int if_ctx_t ;


 int iflib_admin_intr_deferred (int ) ;

__attribute__((used)) static void
em_if_timer(if_ctx_t ctx, uint16_t qid)
{

 if (qid != 0)
  return;

 iflib_admin_intr_deferred(ctx);
}
