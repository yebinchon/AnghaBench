
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int alarm (int ) ;
 scalar_t__ alarmed ;
 int set_tty_parameters () ;
 int sigalrm ;
 int sighup ;
 int sigint ;
 int signal (int ,int ) ;
 int sigterm ;

void init(void)
{
    signal(SIGINT, sigint);
    signal(SIGTERM, sigterm);
    signal(SIGHUP, sighup);

    set_tty_parameters();
    signal(SIGALRM, sigalrm);
    alarm(0);
    alarmed = 0;
}
