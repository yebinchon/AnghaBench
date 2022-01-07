
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_TIMER {scalar_t__ is_started; int cookie; int (* callback ) (int ) ;} ;


 scalar_t__ TRUE ;
 int isci_log_message (int,char*,char*,struct ISCI_TIMER*) ;
 int stub1 (int ) ;

__attribute__((used)) static void
isci_timer_timeout(void *arg)
{
 struct ISCI_TIMER *timer = (struct ISCI_TIMER *)arg;

 isci_log_message(3, "TIMER", "timeout %p\n", timer);







 if (timer->is_started == TRUE)
  timer->callback(timer->cookie);
}
