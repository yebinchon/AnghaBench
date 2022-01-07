
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ input; int offset; TYPE_1__* layout; } ;
typedef TYPE_2__ bhnd_sprom_opcode_state ;
struct TYPE_10__ {scalar_t__ opcodes; int vid; int offset; } ;
typedef TYPE_3__ bhnd_sprom_opcode_idx_entry ;
struct TYPE_8__ {scalar_t__ bindings_size; scalar_t__ bindings; } ;


 int BHND_NV_ASSERT (int,char*) ;
 int bhnd_sprom_opcode_reset (TYPE_2__*) ;
 int bhnd_sprom_opcode_set_var (TYPE_2__*,int ) ;

int
bhnd_sprom_opcode_seek(bhnd_sprom_opcode_state *state,
    bhnd_sprom_opcode_idx_entry *entry)
{
 int error;

 BHND_NV_ASSERT(entry->opcodes < state->layout->bindings_size,
     ("index entry references invalid opcode position"));


 if ((error = bhnd_sprom_opcode_reset(state)))
  return (error);


 state->input = state->layout->bindings + entry->opcodes;


 state->offset = entry->offset;


 if ((error = bhnd_sprom_opcode_set_var(state, entry->vid)))
  return (error);

 return (0);
}
