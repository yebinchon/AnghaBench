
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIG_DFL ;
 int do_abort ;
 int signal (int ,int ) ;

__attribute__((used)) static void sigint_h(int sig)
{
 (void)sig;
 do_abort = 1;
 signal(SIGINT, SIG_DFL);
}
