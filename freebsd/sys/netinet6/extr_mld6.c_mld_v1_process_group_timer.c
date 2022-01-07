
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_multi_head {int dummy; } ;
struct in6_multi {scalar_t__ in6m_timer; int in6m_state; } ;


 int IN6_MULTI_LIST_LOCK_ASSERT () ;





 int MLD_LOCK_ASSERT () ;





 int SLIST_INSERT_HEAD (struct in6_multi_head*,struct in6_multi*,int ) ;
 int V_current_state_timers_running6 ;
 int in6m_defer ;

__attribute__((used)) static void
mld_v1_process_group_timer(struct in6_multi_head *inmh, struct in6_multi *inm)
{
 int report_timer_expired;

 IN6_MULTI_LIST_LOCK_ASSERT();
 MLD_LOCK_ASSERT();

 if (inm->in6m_timer == 0) {
  report_timer_expired = 0;
 } else if (--inm->in6m_timer == 0) {
  report_timer_expired = 1;
 } else {
  V_current_state_timers_running6 = 1;
  return;
 }

 switch (inm->in6m_state) {
 case 132:
 case 129:
 case 135:
 case 134:
 case 128:
 case 137:
  break;
 case 131:
  if (report_timer_expired) {
   inm->in6m_state = 135;
   SLIST_INSERT_HEAD(inmh, inm, in6m_defer);
  }
  break;
 case 136:
 case 130:
 case 133:
  break;
 }
}
