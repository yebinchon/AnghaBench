
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_IGN ;
 int signal (int ,int ) ;
 int stop ;

__attribute__((used)) static void
stopsnd(int signo)
{
 stop = 1;
 signal(SIGINT, SIG_IGN);
}
