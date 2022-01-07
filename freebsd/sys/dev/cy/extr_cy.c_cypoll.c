
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tty {int t_state; } ;
struct com_s {int iptr; int ibuf; int state; int last_modem_status; int prev_modem_status; int extra_state; scalar_t__ etc; struct tty* tp; } ;


 int CD1400_MSVR2_CD ;
 int COM_LOCK () ;
 int COM_UNLOCK () ;
 int CSE_ODONE ;
 int CS_BUSY ;
 int CS_CHECKMSR ;
 int CS_ODONE ;
 scalar_t__ ETC_BREAK_ENDED ;
 scalar_t__ ETC_NONE ;
 int LOG_DEBUG ;
 scalar_t__ LOTS_OF_EVENTS ;
 int NPORTS ;
 int TS_BUSY ;
 int critical_enter () ;
 int critical_exit () ;
 struct com_s* cy_addr (int) ;
 scalar_t__ cy_events ;
 int cy_timeouts ;
 int cyinput (struct com_s*) ;
 int log (int ,char*,int,int) ;
 int ttwwakeup (struct tty*) ;
 int ttyld_modem (struct tty*,int) ;
 int ttyld_start (struct tty*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
cypoll(void *arg)
{
 int unit;




 if (cy_events == 0)
  return;
repeat:
 for (unit = 0; unit < NPORTS; ++unit) {
  struct com_s *com;
  int incc;
  struct tty *tp;

  com = cy_addr(unit);
  if (com == ((void*)0))
   continue;
  tp = com->tp;
  if (tp == ((void*)0)) {





   critical_enter();
   COM_LOCK();
   incc = com->iptr - com->ibuf;
   com->iptr = com->ibuf;
   if (com->state & CS_CHECKMSR) {
    incc += LOTS_OF_EVENTS;
    com->state &= ~CS_CHECKMSR;
   }
   cy_events -= incc;
   COM_UNLOCK();
   critical_exit();
   if (incc != 0)
    log(LOG_DEBUG,
        "cy%d: %d events for device with no tp\n",
        unit, incc);
   continue;
  }
  if (com->iptr != com->ibuf) {
   critical_enter();
   COM_LOCK();
   cyinput(com);
   COM_UNLOCK();
   critical_exit();
  }
  if (com->state & CS_CHECKMSR) {
   u_char delta_modem_status;

   critical_enter();
   COM_LOCK();
   cyinput(com);
   delta_modem_status = com->last_modem_status
          ^ com->prev_modem_status;
   com->prev_modem_status = com->last_modem_status;
   cy_events -= LOTS_OF_EVENTS;
   com->state &= ~CS_CHECKMSR;
   COM_UNLOCK();
   critical_exit();
   if (delta_modem_status & CD1400_MSVR2_CD)
    ttyld_modem(tp,
        com->prev_modem_status & CD1400_MSVR2_CD);
  }
  if (com->extra_state & CSE_ODONE) {
   critical_enter();
   COM_LOCK();
   cy_events -= LOTS_OF_EVENTS;
   com->extra_state &= ~CSE_ODONE;
   COM_UNLOCK();
   critical_exit();
   if (!(com->state & CS_BUSY)) {
    tp->t_state &= ~TS_BUSY;
    ttwwakeup(com->tp);
   }
   if (com->etc != ETC_NONE) {
    if (com->etc == ETC_BREAK_ENDED)
     com->etc = ETC_NONE;
    wakeup(&com->etc);
   }
  }
  if (com->state & CS_ODONE) {
   critical_enter();
   COM_LOCK();
   cy_events -= LOTS_OF_EVENTS;
   com->state &= ~CS_ODONE;
   COM_UNLOCK();
   critical_exit();
   ttyld_start(tp);
  }
  if (cy_events == 0)
   break;
 }
 if (cy_events >= LOTS_OF_EVENTS)
  goto repeat;
}
