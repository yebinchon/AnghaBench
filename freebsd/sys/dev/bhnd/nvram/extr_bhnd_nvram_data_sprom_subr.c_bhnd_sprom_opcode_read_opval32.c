
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
struct TYPE_5__ {int* input; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int EINVAL ;
 int SPROM_OP_BAD (TYPE_1__*,char*,int) ;





 int bhnd_sprom_opcode_apply_scale (TYPE_1__*,int*) ;
 int le16dec (int const*) ;
 int le32dec (int const*) ;

__attribute__((used)) static int
bhnd_sprom_opcode_read_opval32(bhnd_sprom_opcode_state *state, uint8_t type,
   uint32_t *opval)
{
 const uint8_t *p;
 int error;

 p = state->input;
 switch (type) {
 case 132:

  *opval = (int32_t)(int8_t)(*p);
  p += 1;
  break;
 case 129:
  *opval = *p;
  p += 1;
  break;
 case 128:
  *opval = *p;

  if ((error = bhnd_sprom_opcode_apply_scale(state, opval)))
   return (error);

  p += 1;
  break;
 case 131:
  *opval = le16dec(p);
  p += 2;
  break;
 case 130:
  *opval = le32dec(p);
  p += 4;
  break;
 default:
  SPROM_OP_BAD(state, "unsupported data type: %hhu\n", type);
  return (EINVAL);
 }


 state->input = p;

 return (0);
}
