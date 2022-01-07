
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_hpts_entry {int ie_cookie; } ;


 int swi_sched (int ,int ) ;

__attribute__((used)) static void
hpts_timeout_swi(void *arg)
{
 struct tcp_hpts_entry *hpts;

 hpts = (struct tcp_hpts_entry *)arg;
 swi_sched(hpts->ie_cookie, 0);
}
