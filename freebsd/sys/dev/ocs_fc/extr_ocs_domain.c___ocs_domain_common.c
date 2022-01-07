
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_4__ {TYPE_2__* app; } ;
typedef TYPE_1__ ocs_sm_ctx_t ;
struct TYPE_5__ {int ocs; } ;
typedef TYPE_2__ ocs_domain_t ;






 int ocs_log_warn (int ,char*,char const*,int ) ;
 int ocs_sm_event_name (int) ;

__attribute__((used)) static void *
__ocs_domain_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
 ocs_domain_t *domain = ctx->app;

 switch(evt) {
 case 130:
 case 128:
 case 129:
 case 131:

  break;
 default:
  ocs_log_warn(domain->ocs, "%-20s %-20s not handled\n", funcname, ocs_sm_event_name(evt));
  break;
 }

 return ((void*)0);
}
