
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int SIGINT ;
 int SIG_IGN ;
 int signal (int ,int ) ;

void
ignore_signals(void)
{
 signal(SIGHUP, SIG_IGN);
 signal(SIGINT, SIG_IGN);
}
