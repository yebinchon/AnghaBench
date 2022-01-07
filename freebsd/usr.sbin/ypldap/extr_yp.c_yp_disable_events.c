
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct yp_event {int ye_event; } ;
struct TYPE_4__ {TYPE_1__* sc_yp; } ;
struct TYPE_3__ {int yd_events; } ;


 struct yp_event* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct yp_event*,int ) ;
 TYPE_2__* env ;
 int event_del (int *) ;
 int free (struct yp_event*) ;
 int ye_entry ;

void
yp_disable_events(void)
{
 struct yp_event *ye;

 while ((ye = TAILQ_FIRST(&env->sc_yp->yd_events)) != ((void*)0)) {
  TAILQ_REMOVE(&env->sc_yp->yd_events, ye, ye_entry);
  event_del(&ye->ye_event);
  free(ye);
 }
}
