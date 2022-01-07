
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdproc {int dummy; } ;


 int dt_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int set_user_ldt_locked (struct mdproc*) ;

void
set_user_ldt(struct mdproc *mdp)
{

 mtx_lock_spin(&dt_lock);
 set_user_ldt_locked(mdp);
 mtx_unlock_spin(&dt_lock);
}
