
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct yp_event {int ye_event; } ;
struct TYPE_4__ {TYPE_1__* sc_yp; } ;
struct TYPE_3__ {int yd_events; } ;


 int EV_READ ;
 int TAILQ_INSERT_TAIL (int *,struct yp_event*,int ) ;
 struct yp_event* calloc (int,int) ;
 TYPE_2__* env ;
 int event_add (int *,int *) ;
 int event_set (int *,int,int ,int ,int *) ;
 int fatal (int *) ;
 int getdtablesize () ;
 int ye_entry ;
 int yp_fd_event ;

void
yp_enable_events(void)
{
 int i;
 struct yp_event *ye;

 for (i = 0; i < getdtablesize(); i++) {
  if ((ye = calloc(1, sizeof(*ye))) == ((void*)0))
   fatal(((void*)0));
  event_set(&ye->ye_event, i, EV_READ, yp_fd_event, ((void*)0));
  event_add(&ye->ye_event, ((void*)0));
  TAILQ_INSERT_TAIL(&env->sc_yp->yd_events, ye, ye_entry);
 }
}
