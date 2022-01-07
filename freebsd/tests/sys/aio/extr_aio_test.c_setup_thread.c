
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int * sigev_notify_attributes; int sigev_notify_function; int sigev_notify; } ;


 int ATF_REQUIRE_EQ (int ,int ) ;
 int SIGEV_THREAD ;
 int completions ;
 int sem_init (int *,int,int ) ;
 int thr_handler ;

__attribute__((used)) static struct sigevent*
setup_thread(void)
{
 static struct sigevent sev;

 ATF_REQUIRE_EQ(0, sem_init(&completions, 0, 0));
 sev.sigev_notify = SIGEV_THREAD;
 sev.sigev_notify_function = thr_handler;
 sev.sigev_notify_attributes = ((void*)0);
 return (&sev);
}
