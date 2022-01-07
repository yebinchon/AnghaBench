
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcons_state {int traw; int tsave; } ;
struct dcons_port {scalar_t__ sport; } ;


 int SIGTSTP ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int getpid () ;
 int kill (int ,int ) ;
 int printf (char*) ;
 scalar_t__ tc_set ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
dconschat_suspend(struct dcons_state *dc, struct dcons_port *p)
{
 if (p->sport != 0)
  return;

 if (tc_set)
  tcsetattr(STDIN_FILENO, TCSADRAIN, &dc->tsave);

 printf("\n[dconschat suspend]\n");
 kill(getpid(), SIGTSTP);

 if (tc_set)
  tcsetattr(STDIN_FILENO, TCSADRAIN, &dc->traw);
}
