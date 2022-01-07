
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct bhnd_nvram_vardefn {int nelem; int type; } ;
struct TYPE_6__ {scalar_t__ var_state; size_t vid; int var; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;


 int BHND_NV_ASSERT (int,char*) ;
 int EINVAL ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_NONE ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int SPROM_OP_BAD (TYPE_1__*,char*,size_t) ;
 struct bhnd_nvram_vardefn* bhnd_nvram_get_vardefn (size_t) ;
 int bhnd_sprom_opcode_set_nelem (TYPE_1__*,int ) ;
 int bhnd_sprom_opcode_set_type (TYPE_1__*,int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int
bhnd_sprom_opcode_set_var(bhnd_sprom_opcode_state *state, size_t vid)
{
 const struct bhnd_nvram_vardefn *var;
 int error;

 BHND_NV_ASSERT(state->var_state == SPROM_OPCODE_VAR_STATE_NONE,
     ("overwrite of open variable definition"));


 if ((var = bhnd_nvram_get_vardefn(vid)) == ((void*)0)) {
  SPROM_OP_BAD(state, "unknown variable ID: %zu\n", vid);
  return (EINVAL);
 }


 state->vid = vid;
 state->var_state = SPROM_OPCODE_VAR_STATE_OPEN;


 memset(&state->var, 0x0, sizeof(state->var));


 if ((error = bhnd_sprom_opcode_set_type(state, var->type)))
  return (error);


 if ((error = bhnd_sprom_opcode_set_nelem(state, var->nelem)))
  return (error);

 return (0);
}
