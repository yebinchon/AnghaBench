
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int count; int skip_in; scalar_t__ skip_in_negative; } ;
struct TYPE_6__ {int have_bind; TYPE_3__ bind; } ;
struct TYPE_7__ {scalar_t__ var_state; int offset; TYPE_1__ var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;


 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int bhnd_sprom_opcode_apply_scale (TYPE_2__*,int*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_flush_bind(bhnd_sprom_opcode_state *state)
{
 int error;
 uint32_t skip;


 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN ||
     !state->var.have_bind)
  return (0);


 if (state->var.bind.count > 0) {
  skip = state->var.bind.skip_in * state->var.bind.count;
  if ((error = bhnd_sprom_opcode_apply_scale(state, &skip)))
   return (error);

  if (state->var.bind.skip_in_negative) {
   state->offset -= skip;
  } else {
   state->offset += skip;
  }
 }


 memset(&state->var.bind, 0, sizeof(state->var.bind));
 state->var.have_bind = 0;

 return (0);
}
