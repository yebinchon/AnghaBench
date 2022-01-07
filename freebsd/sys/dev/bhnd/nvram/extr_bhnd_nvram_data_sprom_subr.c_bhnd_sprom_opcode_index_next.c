
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_idx; int * idx; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;
typedef int bhnd_sprom_opcode_idx_entry ;


 int BHND_NV_ASSERT (int,char*) ;

bhnd_sprom_opcode_idx_entry *
bhnd_sprom_opcode_index_next(bhnd_sprom_opcode_state *state,
    bhnd_sprom_opcode_idx_entry *prev)
{
 size_t idxpos;


 if (prev == ((void*)0)) {
  idxpos = 0;
 } else {

  idxpos = (size_t)(prev - state->idx);
  BHND_NV_ASSERT(idxpos < state->num_idx,
      ("invalid index %zu", idxpos));


  idxpos++;
 }


 if (idxpos == state->num_idx)
  return (((void*)0));

 return (&state->idx[idxpos]);
}
