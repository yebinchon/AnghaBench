
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int have_bind; } ;
struct TYPE_4__ {scalar_t__ var_state; TYPE_2__ var; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int BHND_NV_ASSERT (int,char*) ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_DONE ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_NONE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_clear_var(bhnd_sprom_opcode_state *state)
{
 if (state->var_state == SPROM_OPCODE_VAR_STATE_NONE)
  return (0);

 BHND_NV_ASSERT(state->var_state == SPROM_OPCODE_VAR_STATE_DONE,
     ("incomplete variable definition"));
 BHND_NV_ASSERT(!state->var.have_bind, ("stale bind state"));

 memset(&state->var, 0, sizeof(state->var));
 state->var_state = SPROM_OPCODE_VAR_STATE_NONE;

 return (0);
}
