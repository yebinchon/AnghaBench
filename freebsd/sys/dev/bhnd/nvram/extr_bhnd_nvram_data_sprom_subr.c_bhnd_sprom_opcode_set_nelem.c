
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct bhnd_nvram_vardefn {int nelem; int type; } ;
struct TYPE_5__ {int nelem; } ;
struct TYPE_6__ {scalar_t__ var_state; TYPE_1__ var; int vid; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int SPROM_OP_BAD (TYPE_2__*,char*,...) ;
 struct bhnd_nvram_vardefn* bhnd_nvram_get_vardefn (int ) ;
 int bhnd_nvram_is_array_type (int ) ;

__attribute__((used)) static int
bhnd_sprom_opcode_set_nelem(bhnd_sprom_opcode_state *state, uint8_t nelem)
{
 const struct bhnd_nvram_vardefn *var;


 if (state->var_state != SPROM_OPCODE_VAR_STATE_OPEN) {
  SPROM_OP_BAD(state, "array length set without open variable "
      "state");
  return (EINVAL);
 }


 if ((var = bhnd_nvram_get_vardefn(state->vid)) == ((void*)0)) {
  SPROM_OP_BAD(state, "unknown variable ID: %zu\n", state->vid);
  return (EINVAL);
 }


 if (nelem == 0) {
  SPROM_OP_BAD(state, "invalid nelem: %hhu\n", nelem);
  return (EINVAL);
 }



 if (!bhnd_nvram_is_array_type(var->type) && nelem != 1) {
  SPROM_OP_BAD(state, "nelem %hhu on non-array %zu\n", nelem,
      state->vid);
  return (ENXIO);
 }


 if (nelem > var->nelem) {
  SPROM_OP_BAD(state, "nelem %hhu exceeds %zu length %hhu\n",
      nelem, state->vid, var->nelem);
  return (ENXIO);
 }


 state->var.nelem = nelem;

 return (0);
}
