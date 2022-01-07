
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t offset; size_t vid; size_t input; TYPE_1__* layout; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;
struct TYPE_9__ {size_t offset; size_t vid; size_t opcodes; } ;
typedef TYPE_3__ bhnd_sprom_opcode_idx_entry ;
struct TYPE_7__ {size_t bindings; } ;


 int ENXIO ;
 int SPROM_OP_BAD (TYPE_2__*,char*,size_t) ;
 size_t UINT16_MAX ;

int
bhnd_sprom_opcode_init_entry(bhnd_sprom_opcode_state *state,
    bhnd_sprom_opcode_idx_entry *entry)
{
 size_t opcodes;





 if (state->offset > UINT16_MAX) {
  SPROM_OP_BAD(state, "cannot index large offset %u\n",
      state->offset);
  return (ENXIO);
 }

 entry->offset = state->offset;


 if (state->vid > UINT16_MAX) {
  SPROM_OP_BAD(state, "cannot index large vid %zu\n",
      state->vid);
  return (ENXIO);
 }
 entry->vid = state->vid;


 opcodes = (state->input - state->layout->bindings);
 if (opcodes > UINT16_MAX) {
  SPROM_OP_BAD(state, "cannot index large opcode offset "
      "%zu\n", opcodes);
  return (ENXIO);
 }
 entry->opcodes = opcodes;

 return (0);
}
