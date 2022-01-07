
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int tsave; } ;


 int STDIN_FILENO ;
 int TCSADRAIN ;
 int exit (int ) ;
 int printf (char*,...) ;
 struct dcons_state sc ;
 scalar_t__ tc_set ;
 int tcsetattr (int ,int ,int *) ;
 int wait (int*) ;

__attribute__((used)) static void
dconschat_cleanup(int sig)
{
 struct dcons_state *dc;
 int status;

 dc = &sc;
 if (tc_set != 0)
  tcsetattr(STDIN_FILENO, TCSADRAIN, &dc->tsave);

 if (sig > 0)
  printf("\n[dconschat exiting with signal %d ...]\n", sig);
 else
  printf("\n[dconschat exiting...]\n");
 wait(&status);
 exit(0);
}
