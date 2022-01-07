
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigevent {int sigev_signo; int sigev_notify; } ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int ) ;
 int SIGEV_SIGNAL ;
 int SIGUSR1 ;
 scalar_t__ SIG_ERR ;
 int completions ;
 int sem_init (int *,int,int ) ;
 scalar_t__ signal (int ,int ) ;
 int sigusr1_handler ;

__attribute__((used)) static struct sigevent*
setup_signal(void)
{
 static struct sigevent sev;

 ATF_REQUIRE_EQ(0, sem_init(&completions, 0, 0));
 sev.sigev_notify = SIGEV_SIGNAL;
 sev.sigev_signo = SIGUSR1;
 ATF_REQUIRE(SIG_ERR != signal(SIGUSR1, sigusr1_handler));
 return (&sev);
}
