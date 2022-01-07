
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cc; int* q; scalar_t__ head; } ;
struct TYPE_6__ {int ks_wsel; TYPE_2__ ks_inq; } ;
typedef TYPE_1__ vkbd_state_t ;
typedef TYPE_2__ vkbd_queue_t ;


 int MA_OWNED ;
 scalar_t__ PZERO ;
 int VKBD_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ nitems (int*) ;
 int selwakeuppri (int *,scalar_t__) ;
 int wakeup (TYPE_2__*) ;

__attribute__((used)) static int
vkbd_data_read(vkbd_state_t *state, int wait)
{
 vkbd_queue_t *q = &state->ks_inq;
 int c;

 VKBD_LOCK_ASSERT(state, MA_OWNED);

 if (q->cc == 0)
  return (-1);


 q->cc --;
 c = q->q[q->head ++];
 if (q->head == nitems(q->q))
  q->head = 0;


 selwakeuppri(&state->ks_wsel, PZERO + 1);
 wakeup(q);

 return (c);
}
