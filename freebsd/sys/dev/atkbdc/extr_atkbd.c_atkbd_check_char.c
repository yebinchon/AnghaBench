
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_6__ {int ks_flags; scalar_t__ ks_composed_char; int kbdc; } ;
typedef TYPE_2__ atkbd_state_t ;


 int COMPOSE ;
 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int TRUE ;
 int kbdc_data_ready (int ) ;

__attribute__((used)) static int
atkbd_check_char(keyboard_t *kbd)
{
 atkbd_state_t *state;

 if (!KBD_IS_ACTIVE(kbd))
  return FALSE;
 state = (atkbd_state_t *)kbd->kb_data;
 if (!(state->ks_flags & COMPOSE) && (state->ks_composed_char > 0))
  return TRUE;
 return kbdc_data_ready(state->kbdc);
}
