
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtadvd_timer {int dummy; } ;


 int TAILQ_REMOVE (int *,struct rtadvd_timer*,int ) ;
 int free (struct rtadvd_timer*) ;
 int ra_timer ;
 int rat_next ;

void
rtadvd_remove_timer(struct rtadvd_timer *rat)
{

 if (rat == ((void*)0))
  return;

 TAILQ_REMOVE(&ra_timer, rat, rat_next);
 free(rat);
}
