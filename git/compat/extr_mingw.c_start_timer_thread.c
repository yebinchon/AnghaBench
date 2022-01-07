
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ CreateEvent (int *,int ,int ,int *) ;
 int ENOMEM ;
 int FALSE ;
 scalar_t__ _beginthreadex (int *,int ,int ,int *,int ,int *) ;
 int errno ;
 int error (char*) ;
 int ticktack ;
 scalar_t__ timer_event ;
 scalar_t__ timer_thread ;

__attribute__((used)) static int start_timer_thread(void)
{
 timer_event = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
 if (timer_event) {
  timer_thread = (HANDLE) _beginthreadex(((void*)0), 0, ticktack, ((void*)0), 0, ((void*)0));
  if (!timer_thread )
   return errno = ENOMEM,
    error("cannot start timer thread");
 } else
  return errno = ENOMEM,
   error("cannot allocate resources for timer");
 return 0;
}
