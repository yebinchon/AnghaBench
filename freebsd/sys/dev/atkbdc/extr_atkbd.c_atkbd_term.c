
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_6__ {int ks_timer; } ;
typedef TYPE_2__ atkbd_state_t ;


 int callout_drain (int *) ;
 int kbd_unregister (TYPE_1__*) ;

__attribute__((used)) static int
atkbd_term(keyboard_t *kbd)
{
 atkbd_state_t *state = (atkbd_state_t *)kbd->kb_data;

 kbd_unregister(kbd);
 callout_drain(&state->ks_timer);
 return 0;
}
