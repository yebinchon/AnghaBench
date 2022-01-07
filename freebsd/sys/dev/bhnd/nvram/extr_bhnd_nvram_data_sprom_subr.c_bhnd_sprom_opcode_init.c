
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct bhnd_sprom_layout {size_t num_vars; } ;
typedef int idx ;
struct TYPE_7__ {size_t num_idx; int * idx; struct bhnd_sprom_layout const* layout; } ;
typedef TYPE_1__ bhnd_sprom_opcode_state ;
typedef int bhnd_sprom_opcode_idx_entry ;


 int BHND_NV_LOG (char*,int) ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int SPROM_OP_BAD (TYPE_1__*,char*,int) ;
 int * bhnd_nv_calloc (size_t,int) ;
 int bhnd_nv_free (int *) ;
 int bhnd_sprom_opcode_init_entry (TYPE_1__*,int *) ;
 int bhnd_sprom_opcode_next_var (TYPE_1__*) ;
 int bhnd_sprom_opcode_reset (TYPE_1__*) ;
 int bhnd_sprom_opcode_sort_idx ;
 int qsort (int *,size_t,int,int ) ;

int
bhnd_sprom_opcode_init(bhnd_sprom_opcode_state *state,
    const struct bhnd_sprom_layout *layout)
{
 bhnd_sprom_opcode_idx_entry *idx;
 size_t num_vars, num_idx;
 int error;

 idx = ((void*)0);

 state->layout = layout;
 state->idx = ((void*)0);
 state->num_idx = 0;


 if ((error = bhnd_sprom_opcode_reset(state)))
  return (error);


 num_idx = state->layout->num_vars;
 idx = bhnd_nv_calloc(num_idx, sizeof(*idx));
 if (idx == ((void*)0))
  return (ENOMEM);

 for (num_vars = 0; num_vars < num_idx; num_vars++) {

  if ((error = bhnd_sprom_opcode_next_var(state))) {
   SPROM_OP_BAD(state, "error reading expected variable "
       "entry: %d\n", error);
   bhnd_nv_free(idx);
   return (error);
  }


  error = bhnd_sprom_opcode_init_entry(state, &idx[num_vars]);
  if (error) {
   SPROM_OP_BAD(state, "error initializing index for "
       "entry: %d\n", error);
   bhnd_nv_free(idx);
   return (error);
  }
 }



 if ((error = bhnd_sprom_opcode_next_var(state)) != ENOENT) {
  BHND_NV_LOG("expected EOF parsing binding table: %d\n", error);
  bhnd_nv_free(idx);
  return (ENXIO);
 }


 if ((error = bhnd_sprom_opcode_reset(state))) {
  bhnd_nv_free(idx);
  return (error);
 }


        qsort(idx, num_idx, sizeof(idx[0]), bhnd_sprom_opcode_sort_idx);

 state->idx = idx;
 state->num_idx = num_idx;

 return (0);
}
