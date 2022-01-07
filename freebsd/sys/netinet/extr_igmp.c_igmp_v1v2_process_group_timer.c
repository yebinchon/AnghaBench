
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi {scalar_t__ inm_timer; int inm_state; } ;







 int IGMP_LOCK_ASSERT () ;





 int const IGMP_VERSION_2 ;
 int IGMP_v1_HOST_MEMBERSHIP_REPORT ;
 int IGMP_v2_HOST_MEMBERSHIP_REPORT ;
 int IN_MULTI_LIST_LOCK_ASSERT () ;
 int V_current_state_timers_running ;
 int igmp_v1v2_queue_report (struct in_multi*,int ) ;

__attribute__((used)) static void
igmp_v1v2_process_group_timer(struct in_multi *inm, const int version)
{
 int report_timer_expired;

 IN_MULTI_LIST_LOCK_ASSERT();
 IGMP_LOCK_ASSERT();

 if (inm->inm_timer == 0) {
  report_timer_expired = 0;
 } else if (--inm->inm_timer == 0) {
  report_timer_expired = 1;
 } else {
  V_current_state_timers_running = 1;
  return;
 }

 switch (inm->inm_state) {
 case 132:
 case 129:
 case 135:
 case 134:
 case 128:
 case 137:
  break;
 case 131:
  if (report_timer_expired) {
   inm->inm_state = 135;
   (void)igmp_v1v2_queue_report(inm,
       (version == IGMP_VERSION_2) ?
        IGMP_v2_HOST_MEMBERSHIP_REPORT :
        IGMP_v1_HOST_MEMBERSHIP_REPORT);
  }
  break;
 case 136:
 case 130:
 case 133:
  break;
 }
}
