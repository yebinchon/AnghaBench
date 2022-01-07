
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ var_state; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;
typedef int bhnd_sprom_opcode_idx_entry ;


 int BHND_NV_ASSERT (int,char*) ;
 scalar_t__ SPROM_OPCODE_OP (int ) ;
 scalar_t__ SPROM_OPCODE_VAR_END ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_DONE ;
 int bhnd_sprom_opcode_seek (TYPE_1__*,int *) ;
 int bhnd_sprom_opcode_step (TYPE_1__*,int *) ;

int
bhnd_sprom_opcode_eval_var(bhnd_sprom_opcode_state *state,
    bhnd_sprom_opcode_idx_entry *entry)
{
 uint8_t opcode;
 int error;


 if ((error = bhnd_sprom_opcode_seek(state, entry)))
  return (error);


 while ((error = bhnd_sprom_opcode_step(state, &opcode)) == 0) {

  if (SPROM_OPCODE_OP(opcode) != SPROM_OPCODE_VAR_END)
   continue;

  BHND_NV_ASSERT(state->var_state == SPROM_OPCODE_VAR_STATE_DONE,
      ("incomplete variable definition"));

  return (0);
 }


 return (error);
}
