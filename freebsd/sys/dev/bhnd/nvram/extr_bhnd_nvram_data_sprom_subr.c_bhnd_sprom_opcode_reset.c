
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* layout; int revs; int var_state; scalar_t__ vid; scalar_t__ offset; int input; int var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;
struct TYPE_4__ {int rev; int bindings; } ;


 int SPROM_OPCODE_VAR_STATE_NONE ;
 int bit_set (int ,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_reset(bhnd_sprom_opcode_state *state)
{
 memset(&state->var, 0, sizeof(state->var));

 state->input = state->layout->bindings;
 state->offset = 0;
 state->vid = 0;
 state->var_state = SPROM_OPCODE_VAR_STATE_NONE;
 bit_set(state->revs, state->layout->rev);

 return (0);
}
