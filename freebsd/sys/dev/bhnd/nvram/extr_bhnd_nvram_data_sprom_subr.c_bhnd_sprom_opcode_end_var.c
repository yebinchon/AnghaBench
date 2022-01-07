
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ var_state; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int EINVAL ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_DONE ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int SPROM_OP_BAD (TYPE_1__*,char*) ;

__attribute__((used)) static int
bhnd_sprom_opcode_end_var(bhnd_sprom_opcode_state *state)
{
 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
  SPROM_OP_BAD(state, "no open variable definition\n");
  return (EINVAL);
 }

 state->var_state = SPROM_OPCODE_VAR_STATE_DONE;
 return (0);
}
