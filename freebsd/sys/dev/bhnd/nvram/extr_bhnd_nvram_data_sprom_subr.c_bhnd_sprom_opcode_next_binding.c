
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int have_bind; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;


 int BHND_NV_ASSERT (int,char*) ;
 int EINVAL ;
 int ENOENT ;



 int SPROM_OPCODE_OP (int ) ;

 scalar_t__ SPROM_OPCODE_VAR_STATE_DONE ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int bhnd_sprom_opcode_step (TYPE_2__*,int *) ;

int
bhnd_sprom_opcode_next_binding(bhnd_sprom_opcode_state *state)
{
 uint8_t opcode;
 int error;

 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN)
  return (EINVAL);


 while ((error = bhnd_sprom_opcode_step(state, &opcode)) == 0) {
  switch (SPROM_OPCODE_OP(opcode)) {
  case 131:
  case 130:
  case 129:

   BHND_NV_ASSERT(
       state->var_state == SPROM_OPCODE_VAR_STATE_OPEN,
       ("missing variable definition"));
   BHND_NV_ASSERT(state->var.have_bind, ("missing bind"));

   return (0);

  case 128:

   BHND_NV_ASSERT(
       state->var_state == SPROM_OPCODE_VAR_STATE_DONE,
       ("variable definition still available"));
   return (ENOENT);
  }
 }


 return (error);
}
