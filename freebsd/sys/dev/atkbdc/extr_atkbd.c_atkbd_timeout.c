
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_7__ {int ks_timer; } ;
typedef TYPE_2__ atkbd_state_t ;


 int FALSE ;
 int TRUE ;
 int callout_reset (int *,int,void (*) (void*),void*) ;
 int hz ;
 scalar_t__ kbdd_check_char (TYPE_1__*) ;
 int kbdd_intr (TYPE_1__*,int *) ;
 scalar_t__ kbdd_lock (TYPE_1__*,int ) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
atkbd_timeout(void *arg)
{
 atkbd_state_t *state;
 keyboard_t *kbd;
 int s;
 s = spltty();
 kbd = (keyboard_t *)arg;
 if (kbdd_lock(kbd, TRUE)) {





  kbdd_lock(kbd, FALSE);
  if (kbdd_check_char(kbd))
   kbdd_intr(kbd, ((void*)0));
 }
 splx(s);
 state = (atkbd_state_t *)kbd->kb_data;
 callout_reset(&state->ks_timer, hz / 10, atkbd_timeout, arg);
}
