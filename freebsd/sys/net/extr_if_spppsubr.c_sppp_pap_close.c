
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {scalar_t__* state; } ;


 size_t IDX_PAP ;
 scalar_t__ STATE_CLOSED ;
 int pap ;
 int sppp_cp_change_state (int *,struct sppp*,scalar_t__) ;

__attribute__((used)) static void
sppp_pap_close(struct sppp *sp)
{
 if (sp->state[IDX_PAP] != STATE_CLOSED)
  sppp_cp_change_state(&pap, sp, STATE_CLOSED);
}
