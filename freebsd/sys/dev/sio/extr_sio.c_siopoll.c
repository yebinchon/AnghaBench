
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int dummy; } ;
struct com_s {int iptr; int ibuf; int state; int last_modem_status; int prev_modem_status; int extra_state; scalar_t__ gone; struct tty* tp; } ;


 int CSE_BUSYCHECK ;
 int CS_BUSY ;
 int CS_CHECKMSR ;
 int CS_ODONE ;
 scalar_t__ LOTS_OF_EVENTS ;
 int MSR_DCD ;
 struct com_s* com_addr (int) ;
 scalar_t__ com_events ;
 int hz ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int sio_lock ;
 int sio_numunits ;
 int siobusycheck ;
 int sioinput (struct com_s*) ;
 int timeout (int ,struct com_s*,int) ;
 int ttyld_modem (struct tty*,int) ;
 int ttyld_start (struct tty*) ;

__attribute__((used)) static void
siopoll(void *dummy)
{
 int unit;

 if (com_events == 0)
  return;
repeat:
 for (unit = 0; unit < sio_numunits; ++unit) {
  struct com_s *com;
  int incc;
  struct tty *tp;

  com = com_addr(unit);
  if (com == ((void*)0))
   continue;
  tp = com->tp;
  if (tp == ((void*)0) || com->gone) {




   mtx_lock_spin(&sio_lock);
   incc = com->iptr - com->ibuf;
   com->iptr = com->ibuf;
   if (com->state & CS_CHECKMSR) {
    incc += LOTS_OF_EVENTS;
    com->state &= ~CS_CHECKMSR;
   }
   com_events -= incc;
   mtx_unlock_spin(&sio_lock);
   continue;
  }
  if (com->iptr != com->ibuf) {
   mtx_lock_spin(&sio_lock);
   sioinput(com);
   mtx_unlock_spin(&sio_lock);
  }
  if (com->state & CS_CHECKMSR) {
   u_char delta_modem_status;

   mtx_lock_spin(&sio_lock);
   delta_modem_status = com->last_modem_status
          ^ com->prev_modem_status;
   com->prev_modem_status = com->last_modem_status;
   com_events -= LOTS_OF_EVENTS;
   com->state &= ~CS_CHECKMSR;
   mtx_unlock_spin(&sio_lock);
   if (delta_modem_status & MSR_DCD)
    ttyld_modem(tp,
        com->prev_modem_status & MSR_DCD);
  }
  if (com->state & CS_ODONE) {
   mtx_lock_spin(&sio_lock);
   com_events -= LOTS_OF_EVENTS;
   com->state &= ~CS_ODONE;
   mtx_unlock_spin(&sio_lock);
   if (!(com->state & CS_BUSY)
       && !(com->extra_state & CSE_BUSYCHECK)) {
    timeout(siobusycheck, com, hz / 100);
    com->extra_state |= CSE_BUSYCHECK;
   }
   ttyld_start(tp);
  }
  if (com_events == 0)
   break;
 }
 if (com_events >= LOTS_OF_EVENTS)
  goto repeat;
}
