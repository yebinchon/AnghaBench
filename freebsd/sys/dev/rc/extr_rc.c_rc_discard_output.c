
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_chans {int rc_flags; TYPE_2__* rc_tp; int rc_obufend; int rc_optr; TYPE_1__* rc_rcb; } ;
struct TYPE_4__ {int t_state; } ;
struct TYPE_3__ {int sc_scheduled_event; } ;


 scalar_t__ LOTS_OF_EVENTS ;
 int RC_DOXXFER ;
 int TS_BUSY ;
 int critical_enter () ;
 int critical_exit () ;
 int ttwwakeup (TYPE_2__*) ;

__attribute__((used)) static void
rc_discard_output(struct rc_chans *rc)
{
 critical_enter();
 if (rc->rc_flags & RC_DOXXFER) {
  rc->rc_rcb->sc_scheduled_event -= LOTS_OF_EVENTS;
  rc->rc_flags &= ~RC_DOXXFER;
 }
 rc->rc_optr = rc->rc_obufend;
 rc->rc_tp->t_state &= ~TS_BUSY;
 critical_exit();
 ttwwakeup(rc->rc_tp);
}
