
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int *) ;
 int GetLastError () ;
 int SetEvent (int *) ;
 int WAIT_OBJECT_0 ;
 int WAIT_TIMEOUT ;
 int WaitForSingleObject (int *,int) ;
 int error (char*,...) ;
 int * timer_event ;
 int * timer_thread ;

__attribute__((used)) static void stop_timer_thread(void)
{
 if (timer_event)
  SetEvent(timer_event);
 if (timer_thread) {
  int rc = WaitForSingleObject(timer_thread, 10000);
  if (rc == WAIT_TIMEOUT)
   error("timer thread did not terminate timely");
  else if (rc != WAIT_OBJECT_0)
   error("waiting for timer thread failed: %lu",
         GetLastError());
  CloseHandle(timer_thread);
 }
 if (timer_event)
  CloseHandle(timer_event);
 timer_event = ((void*)0);
 timer_thread = ((void*)0);
}
