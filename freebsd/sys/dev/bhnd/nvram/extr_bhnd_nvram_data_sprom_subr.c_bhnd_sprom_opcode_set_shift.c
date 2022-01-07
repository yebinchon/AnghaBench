
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_5__ {int shift; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;


 int EINVAL ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int SPROM_OP_BAD (TYPE_2__*,char*) ;

__attribute__((used)) static inline int
bhnd_sprom_opcode_set_shift(bhnd_sprom_opcode_state *state, int8_t shift)
{
 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
  SPROM_OP_BAD(state, "no open variable definition\n");
  return (EINVAL);
 }

 state->var.shift = shift;
 return (0);
}
