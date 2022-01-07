
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_evtchn {int port; struct per_user_data* user; } ;
struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; int ring_overflow; int ring_prod_mutex; int ev_rsel; int * ring; } ;


 size_t EVTCHN_RING_MASK (scalar_t__) ;
 scalar_t__ EVTCHN_RING_SIZE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selwakeup (int *) ;
 int wakeup (struct per_user_data*) ;
 int wmb () ;

__attribute__((used)) static void
evtchn_interrupt(void *arg)
{
 struct user_evtchn *evtchn;
 struct per_user_data *u;

 evtchn = arg;
 u = evtchn->user;





 mtx_lock(&u->ring_prod_mutex);
 if ((u->ring_prod - u->ring_cons) < EVTCHN_RING_SIZE) {
  u->ring[EVTCHN_RING_MASK(u->ring_prod)] = evtchn->port;
  wmb();
  if (u->ring_cons == u->ring_prod++) {
   wakeup(u);
   selwakeup(&u->ev_rsel);
  }
 } else
  u->ring_overflow = 1;
 mtx_unlock(&u->ring_prod_mutex);
}
