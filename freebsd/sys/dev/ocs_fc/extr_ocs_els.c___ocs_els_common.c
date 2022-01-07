
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
typedef int ocs_sm_ctx_t ;
struct TYPE_7__ {int display_name; } ;
struct TYPE_6__ {TYPE_1__* node; } ;
struct TYPE_5__ {int ocs; } ;






 TYPE_2__* els ;
 TYPE_3__* node ;
 int ocs_els_io_cleanup (TYPE_2__*,int const,void*) ;
 int ocs_log_warn (int ,char*,int ,char const*,int ) ;
 int ocs_sm_event_name (int) ;
 int std_els_state_decl () ;

void *
__ocs_els_common(const char *funcname, ocs_sm_ctx_t *ctx, ocs_sm_event_t evt, void *arg)
{
 std_els_state_decl();

 switch(evt) {
 case 131:
 case 129:
 case 130:
  break;




 case 128:
  ocs_log_warn(els->node->ocs, "[%s] %-20s %-20s not handled - terminating ELS\n", node->display_name, funcname,
   ocs_sm_event_name(evt));
  ocs_els_io_cleanup(els, 128, arg);
  break;
 default:
  ocs_log_warn(els->node->ocs, "[%s] %-20s %-20s not handled\n", node->display_name, funcname,
   ocs_sm_event_name(evt));
  break;
 }
 return ((void*)0);
}
