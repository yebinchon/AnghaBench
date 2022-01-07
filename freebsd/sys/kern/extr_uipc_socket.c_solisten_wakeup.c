
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct socket {int so_state; int * so_sigio; int sol_comp; TYPE_1__ so_rdsel; int sol_upcallarg; int (* sol_upcall ) (struct socket*,int ,int ) ;} ;


 int KNOTE_LOCKED (int *,int ) ;
 int M_NOWAIT ;
 int PSOCK ;
 int SIGIO ;
 int SOLISTEN_UNLOCK (struct socket*) ;
 int SS_ASYNC ;
 int pgsigio (int **,int ,int ) ;
 int selwakeuppri (TYPE_1__*,int ) ;
 int stub1 (struct socket*,int ,int ) ;
 int wakeup_one (int *) ;

void
solisten_wakeup(struct socket *sol)
{

 if (sol->sol_upcall != ((void*)0))
  (void )sol->sol_upcall(sol, sol->sol_upcallarg, M_NOWAIT);
 else {
  selwakeuppri(&sol->so_rdsel, PSOCK);
  KNOTE_LOCKED(&sol->so_rdsel.si_note, 0);
 }
 SOLISTEN_UNLOCK(sol);
 wakeup_one(&sol->sol_comp);
 if ((sol->so_state & SS_ASYNC) && sol->so_sigio != ((void*)0))
  pgsigio(&sol->so_sigio, SIGIO, 0);
}
