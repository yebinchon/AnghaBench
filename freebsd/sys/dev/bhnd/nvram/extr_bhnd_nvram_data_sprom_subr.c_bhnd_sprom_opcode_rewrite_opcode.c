
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int bind_total; } ;
struct TYPE_8__ {int var_state; TYPE_1__ var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;


 int SPROM_OPCODE_DO_BIND ;
 int SPROM_OPCODE_OP (int) ;
 int SPROM_OPCODE_VAR_END ;



 int SPROM_OP_BIND_SKIP_IN_SHIFT ;
 int SPROM_OP_BIND_SKIP_IN_SIGN ;
 int SPROM_OP_BIND_SKIP_OUT_SHIFT ;
 int SPROM_OP_IS_IMPLICIT_VAR_END (int) ;
 int SPROM_OP_IS_VAR_END (int) ;
 int bhnd_sprom_opcode_clear_var (TYPE_2__*) ;
 int bhnd_sprom_opcode_end_var (TYPE_2__*) ;
 int bhnd_sprom_opcode_set_bind (TYPE_2__*,int,int,int,int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_rewrite_opcode(bhnd_sprom_opcode_state *state,
    uint8_t *opcode)
{
 uint8_t op;
 int error;

 op = SPROM_OPCODE_OP(*opcode);
 switch (state->var_state) {
 case 129:

  return (0);

 case 128:







  if (SPROM_OP_IS_VAR_END(op) &&
      state->var.bind_total == 0)
  {
   uint8_t count, skip_in, skip_out;
   bool skip_in_negative;


   count = 1;
   skip_in = 1;
   skip_out = 1;
   skip_in_negative = 0;

   error = bhnd_sprom_opcode_set_bind(state, count,
       skip_in, skip_in_negative, skip_out);
   if (error)
    return (error);


   *opcode = SPROM_OPCODE_DO_BIND |
       (0 << SPROM_OP_BIND_SKIP_IN_SIGN) |
       (1 << SPROM_OP_BIND_SKIP_IN_SHIFT) |
       (1 << SPROM_OP_BIND_SKIP_OUT_SHIFT);

   return (0);
  }





  if (SPROM_OP_IS_IMPLICIT_VAR_END(op)) {

   if ((error = bhnd_sprom_opcode_end_var(state)))
    return (error);


   *opcode = SPROM_OPCODE_VAR_END;
   return (0);
  }
  break;


 case 130:


  return (bhnd_sprom_opcode_clear_var(state));
 }


 return (0);
}
