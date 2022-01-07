
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_5__ {int base_type; void* scale; void* mask; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;
typedef int bhnd_nvram_type ;
 int EINVAL ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int SPROM_OP_BAD (TYPE_2__*,char*,...) ;
 void* UINT16_MAX ;
 size_t UINT32_MAX ;
 void* UINT8_MAX ;
 int bhnd_nvram_base_type (int) ;
 size_t bhnd_nvram_type_width (int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_set_type(bhnd_sprom_opcode_state *state, bhnd_nvram_type type)
{
 bhnd_nvram_type base_type;
 size_t width;
 uint32_t mask;


 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
  SPROM_OP_BAD(state, "type set outside variable definition\n");
  return (EINVAL);
 }


 width = bhnd_nvram_type_width(type);
 if (width == 0) {
  SPROM_OP_BAD(state, "unsupported variable-width type: %d\n",
      type);
  return (EINVAL);
 } else if (width > UINT32_MAX) {
  SPROM_OP_BAD(state, "invalid type width %zu for type: %d\n",
      width, type);
  return (EINVAL);
 }


 base_type = bhnd_nvram_base_type(type);
 switch (base_type) {
 case 128:
 case 132:
 case 135:
  mask = UINT8_MAX;
  break;
 case 130:
 case 134:
  mask = UINT16_MAX;
  break;
 case 129:
 case 133:
  mask = UINT32_MAX;
  break;
 case 131:

 default:
  SPROM_OP_BAD(state, "unsupported type: %d\n", type);
  return (EINVAL);
 }


 state->var.base_type = base_type;
 state->var.mask = mask;
 state->var.scale = (uint32_t)width;

 return (0);
}
