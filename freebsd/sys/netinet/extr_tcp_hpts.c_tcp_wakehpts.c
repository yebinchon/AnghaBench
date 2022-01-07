
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int p_hpts_wake_scheduled; int ie_cookie; } ;


 int HPTS_MTX_ASSERT (struct tcp_hpts_entry*) ;
 int swi_sched (int ,int ) ;

__attribute__((used)) static void
tcp_wakehpts(struct tcp_hpts_entry *hpts)
{
 HPTS_MTX_ASSERT(hpts);
 if (hpts->p_hpts_wake_scheduled == 0) {
  hpts->p_hpts_wake_scheduled = 1;
  swi_sched(hpts->ie_cookie, 0);
 }
}
