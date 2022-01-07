
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct intr_event {int ie_flags; scalar_t__ ie_count; char* ie_name; int ie_source; int (* ie_post_ithread ) (int ) ;int ie_warncnt; int ie_warntm; } ;


 int IE_SOFT ;
 int THREAD_NO_SLEEPING () ;
 int THREAD_SLEEPING_OK () ;
 int intr_event_execute_handlers (struct proc*,struct intr_event*) ;
 scalar_t__ intr_storm_threshold ;
 int pause (char*,int) ;
 scalar_t__ ppsratecheck (int *,int *,int) ;
 int printf (char*,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
ithread_execute_handlers(struct proc *p, struct intr_event *ie)
{


 if (!(ie->ie_flags & IE_SOFT))
  THREAD_NO_SLEEPING();
 intr_event_execute_handlers(p, ie);
 if (!(ie->ie_flags & IE_SOFT))
  THREAD_SLEEPING_OK();
 if (intr_storm_threshold != 0 && ie->ie_count >= intr_storm_threshold &&
     !(ie->ie_flags & IE_SOFT)) {

  if (ppsratecheck(&ie->ie_warntm, &ie->ie_warncnt, 1)) {
   printf(
 "interrupt storm detected on \"%s\"; throttling interrupt source\n",
       ie->ie_name);
  }
  pause("istorm", 1);
 } else
  ie->ie_count++;





 if (ie->ie_post_ithread != ((void*)0))
  ie->ie_post_ithread(ie->ie_source);
}
