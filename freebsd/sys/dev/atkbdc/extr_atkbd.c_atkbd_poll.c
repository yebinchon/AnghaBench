
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {int ks_polling; } ;
typedef TYPE_2__ atkbd_state_t ;


 int spltty () ;
 int splx (int) ;

__attribute__((used)) static int
atkbd_poll(keyboard_t *kbd, int on)
{
 atkbd_state_t *state;
 int s;

 state = (atkbd_state_t *)kbd->kb_data;
 s = spltty();
 if (on)
  ++state->ks_polling;
 else
  --state->ks_polling;
 splx(s);
 return 0;
}
