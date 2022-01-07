
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int var_state; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int BHND_NV_ASSERT (int,char*) ;
 int SPROM_OPCODE_OP (int ) ;



 int SPROM_OPCODE_VAR_STATE_OPEN ;
 int bhnd_sprom_opcode_step (TYPE_1__*,int *) ;

int
bhnd_sprom_opcode_next_var(bhnd_sprom_opcode_state *state)
{
 uint8_t opcode;
 int error;


 while ((error = bhnd_sprom_opcode_step(state, &opcode)) == 0) {
  switch (SPROM_OPCODE_OP(opcode)) {
  case 130:
  case 129:
  case 128:
   BHND_NV_ASSERT(
       state->var_state == SPROM_OPCODE_VAR_STATE_OPEN,
       ("missing variable definition"));

   return (0);
  default:
   continue;
  }
 }


 return (error);
}
