
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int8_t ;
struct TYPE_17__ {scalar_t__* input; scalar_t__ vid; scalar_t__ offset; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;
typedef int bhnd_nvram_type ;
 int BHND_NV_LOG (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ INT8_MAX ;



 scalar_t__ SPROM_OPCODE_EOF ;
 scalar_t__ SPROM_OPCODE_IMM (scalar_t__) ;





 scalar_t__ SPROM_OPCODE_OP (scalar_t__) ;
 int SPROM_OP_BAD (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ SPROM_OP_BIND_SKIP_IN_MASK ;
 scalar_t__ SPROM_OP_BIND_SKIP_IN_SHIFT ;
 scalar_t__ SPROM_OP_BIND_SKIP_IN_SIGN ;
 scalar_t__ SPROM_OP_BIND_SKIP_OUT_MASK ;
 scalar_t__ SPROM_OP_BIND_SKIP_OUT_SHIFT ;
 scalar_t__ SPROM_OP_DATA_I8 ;
 scalar_t__ SPROM_OP_DATA_U8 ;
 scalar_t__ SPROM_OP_REV_END_MASK ;
 scalar_t__ SPROM_OP_REV_END_SHIFT ;
 scalar_t__ SPROM_OP_REV_START_MASK ;
 scalar_t__ SPROM_OP_REV_START_SHIFT ;
 scalar_t__ UINT32_MAX ;
 int bhnd_sprom_opcode_apply_scale (TYPE_1__*,scalar_t__*) ;
 int bhnd_sprom_opcode_end_var (TYPE_1__*) ;
 int bhnd_sprom_opcode_flush_bind (TYPE_1__*) ;
 scalar_t__ bhnd_sprom_opcode_matches_layout_rev (TYPE_1__*) ;
 int bhnd_sprom_opcode_read_opval32 (TYPE_1__*,scalar_t__,scalar_t__*) ;
 int bhnd_sprom_opcode_rewrite_opcode (TYPE_1__*,scalar_t__*) ;
 int bhnd_sprom_opcode_set_bind (TYPE_1__*,scalar_t__,scalar_t__,int,scalar_t__) ;
 int bhnd_sprom_opcode_set_mask (TYPE_1__*,scalar_t__) ;
 int bhnd_sprom_opcode_set_nelem (TYPE_1__*,scalar_t__) ;
 int bhnd_sprom_opcode_set_revs (TYPE_1__*,scalar_t__,scalar_t__) ;
 int bhnd_sprom_opcode_set_shift (TYPE_1__*,scalar_t__) ;
 int bhnd_sprom_opcode_set_type (TYPE_1__*,int ) ;
 int bhnd_sprom_opcode_set_var (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
bhnd_sprom_opcode_step(bhnd_sprom_opcode_state *state, uint8_t *opcode)
{
 int error;

 while (*state->input != SPROM_OPCODE_EOF) {
  uint32_t val;
  uint8_t op, rewrite, immd;


  *opcode = *state->input;
  op = SPROM_OPCODE_OP(*opcode);
  immd = SPROM_OPCODE_IMM(*opcode);


  if ((error = bhnd_sprom_opcode_flush_bind(state)))
   return (error);


  rewrite = *opcode;
  if ((error = bhnd_sprom_opcode_rewrite_opcode(state, &rewrite)))
   return (error);

  if (rewrite != *opcode) {

   *opcode = rewrite;



   if (!bhnd_sprom_opcode_matches_layout_rev(state))
    continue;

   return (0);
  }


  state->input++;

  switch (op) {
  case 129:
   if ((error = bhnd_sprom_opcode_set_var(state, immd)))
    return (error);
   break;

  case 128:
   error = bhnd_sprom_opcode_set_var(state,
       state->vid + immd);
   if (error)
    return (error);
   break;

  case 131:
   error = bhnd_sprom_opcode_read_opval32(state, immd,
       &val);
   if (error)
    return (error);

   if ((error = bhnd_sprom_opcode_set_var(state, val)))
    return (error);

   break;

  case 130:
   if ((error = bhnd_sprom_opcode_end_var(state)))
    return (error);
   break;

  case 140:
   immd = *state->input;
   if ((error = bhnd_sprom_opcode_set_nelem(state, immd)))
    return (error);

   state->input++;
   break;

  case 145:
  case 144: {
   uint8_t count, skip_in, skip_out;
   bool skip_in_negative;


   skip_in = (immd & SPROM_OP_BIND_SKIP_IN_MASK) >>
       SPROM_OP_BIND_SKIP_IN_SHIFT;

   skip_in_negative =
       ((immd & SPROM_OP_BIND_SKIP_IN_SIGN) != 0);

   skip_out = (immd & SPROM_OP_BIND_SKIP_OUT_MASK) >>
         SPROM_OP_BIND_SKIP_OUT_SHIFT;


   if (op == 144) {

    count = *state->input;
    state->input++;
   } else {
    count = 1;
   }


   error = bhnd_sprom_opcode_set_bind(state, count,
       skip_in, skip_in_negative, skip_out);
   if (error)
    return (error);

   break;
  }
  case 143: {
   uint8_t count, skip_in, skip_out;
   bool skip_in_negative;



   count = immd;
   skip_in = 1;
   skip_out = 1;
   skip_in_negative = 0;

   error = bhnd_sprom_opcode_set_bind(state, count,
       skip_in, skip_in_negative, skip_out);
   if (error)
    return (error);
   break;
  }

  case 137:
   error = bhnd_sprom_opcode_set_revs(state, immd, immd);
   if (error)
    return (error);
   break;

  case 136: {
   uint8_t range;
   uint8_t rstart, rend;



   range = *state->input;
   rstart = (range & SPROM_OP_REV_START_MASK) >>
       SPROM_OP_REV_START_SHIFT;
   rend = (range & SPROM_OP_REV_END_MASK) >>
       SPROM_OP_REV_END_SHIFT;


   error = bhnd_sprom_opcode_set_revs(state, rstart, rend);
   if (error)
    return (error);


   state->input++;
   break;
  }
  case 141:
   if ((error = bhnd_sprom_opcode_set_mask(state, immd)))
    return (error);
   break;

  case 142:
   error = bhnd_sprom_opcode_read_opval32(state, immd,
       &val);
   if (error)
    return (error);

   if ((error = bhnd_sprom_opcode_set_mask(state, val)))
    return (error);
   break;

  case 134:
   error = bhnd_sprom_opcode_set_shift(state, immd * 2);
   if (error)
    return (error);
   break;

  case 135: {
   int8_t shift;

   if (immd == SPROM_OP_DATA_I8) {
    shift = (int8_t)(*state->input);
   } else if (immd == SPROM_OP_DATA_U8) {
    val = *state->input;
    if (val > INT8_MAX) {
     SPROM_OP_BAD(state, "invalid shift "
         "value: %#x\n", val);
    }

    shift = val;
   } else {
    SPROM_OP_BAD(state, "unsupported shift data "
        "type: %#hhx\n", immd);
    return (EINVAL);
   }

   if ((error = bhnd_sprom_opcode_set_shift(state, shift)))
    return (error);

   state->input++;
   break;
  }
  case 138:

   val = immd;


   error = bhnd_sprom_opcode_apply_scale(state, &val);
   if (error)
    return (error);


   if (UINT32_MAX - state->offset < val) {
    BHND_NV_LOG("offset out of range\n");
    return (EINVAL);
   }


   state->offset += val;
   break;
  case 139:
   error = bhnd_sprom_opcode_read_opval32(state, immd,
       &val);
   if (error)
    return (error);

   state->offset = val;
   break;

  case 133:

   immd = *state->input;
   state->input++;


  case 132:
   switch (immd) {
   case 146:
   case 149:
   case 148:
   case 147:
   case 151:
   case 154:
   case 153:
   case 152:
   case 155:
   case 150:
    error = bhnd_sprom_opcode_set_type(state,
        (bhnd_nvram_type)immd);
    if (error)
     return (error);
    break;
   default:
    BHND_NV_LOG("unrecognized type %#hhx\n", immd);
    return (EINVAL);
   }
   break;

  default:
   BHND_NV_LOG("unrecognized opcode %#hhx\n", *opcode);
   return (EINVAL);
  }



  if (bhnd_sprom_opcode_matches_layout_rev(state))
   return (0);
 }


 return (ENOENT);
}
