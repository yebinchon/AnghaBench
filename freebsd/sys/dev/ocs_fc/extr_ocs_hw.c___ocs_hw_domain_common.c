
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_5__ {TYPE_3__* app; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_6__ {int os; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_7__ {TYPE_2__* hw; } ;
typedef TYPE_3__ ocs_domain_t ;
typedef int int32_t ;



 int ocs_log_test (int ,char*,char const*,int ) ;
 int ocs_sm_event_name (int) ;
 int smtrace (char*) ;

__attribute__((used)) static int32_t
__ocs_hw_domain_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *data)
{
 ocs_domain_t *domain = ctx->app;
 ocs_hw_t *hw = domain->hw;

 smtrace("domain");

 switch (evt) {
 case 128:

  break;

 default:
  ocs_log_test(hw->os, "%s %-20s not handled\n", funcname, ocs_sm_event_name(evt));
  break;
 }

 return 0;
}
