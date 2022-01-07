
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_env {int dummy; } ;
struct query_state {int dummy; } ;
struct kevent {int ident; scalar_t__ udata; } ;
struct configuration {int dummy; } ;


 int TRACE_IN (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int TRACE_OUT (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ;
 int close (int ) ;
 int destroy_query_state (struct query_state*) ;

__attribute__((used)) static void
process_timer_event(struct kevent *event_data, struct runtime_env *env,
 struct configuration *config)
{
 struct query_state *qstate;

 TRACE_IN(process_timer_event);
 qstate = (struct query_state *)event_data->udata;
 destroy_query_state(qstate);
 close(event_data->ident);
 TRACE_OUT(process_timer_event);
}
