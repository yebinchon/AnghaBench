
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {size_t skip_out; int skip_in; size_t count; scalar_t__ skip_in_negative; } ;
struct TYPE_3__ {size_t nelem; int have_bind; int mask; int shift; int base_type; TYPE_2__ bind; } ;
struct bhnd_sprom_opcode_state {scalar_t__ var_state; size_t offset; TYPE_1__ var; } ;
struct bhnd_sprom_opcode_idx_entry {int vid; } ;
struct bhnd_nvram_vardefn {size_t nelem; int flags; int type; int fmt; int name; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef int intv ;
typedef TYPE_1__ bhnd_sprom_opcode_var ;
typedef TYPE_2__ bhnd_sprom_opcode_bind ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NVRAM_TYPE_INT32 ;
 int BHND_NVRAM_TYPE_UINT32 ;
 int BHND_NVRAM_VAL_BORROW_DATA ;
 int BHND_NVRAM_VF_IGNALL1 ;
 int BHND_NV_ASSERT (int,char*) ;
 int BHND_NV_LOG (char*,size_t,...) ;
 int EFTYPE ;
 int EINVAL ;
 int ENOENT ;
 size_t SIZE_MAX ;
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ;
 int bhnd_nvram_base_type (int ) ;
 struct bhnd_nvram_vardefn* bhnd_nvram_get_vardefn (int ) ;
 scalar_t__ bhnd_nvram_is_signed_type (int ) ;
 int bhnd_nvram_sprom_read_offset (struct bhnd_nvram_vardefn const*,struct bhnd_nvram_io*,int ,size_t,int,int,int*) ;
 int bhnd_nvram_val_init (int *,int ,union bhnd_nvram_sprom_storage*,size_t,int ,int ) ;
 int bhnd_nvram_value_coerce (int*,int,int ,void*,size_t*,int ) ;
 size_t bhnd_nvram_value_size (int *,int ,int ,int) ;
 int bhnd_sprom_opcode_apply_scale (struct bhnd_sprom_opcode_state*,int*) ;
 int bhnd_sprom_opcode_eval_var (struct bhnd_sprom_opcode_state*,struct bhnd_sprom_opcode_idx_entry*) ;
 int bhnd_sprom_opcode_next_binding (struct bhnd_sprom_opcode_state*) ;
 int bhnd_sprom_opcode_seek (struct bhnd_sprom_opcode_state*,struct bhnd_sprom_opcode_idx_entry*) ;
 int memset (union bhnd_nvram_sprom_storage*,int ,size_t) ;

__attribute__((used)) static int
bhnd_nvram_sprom_read_var(struct bhnd_sprom_opcode_state *state,
    struct bhnd_sprom_opcode_idx_entry *entry, struct bhnd_nvram_io *io,
    union bhnd_nvram_sprom_storage *storage, bhnd_nvram_val *val)
{
 union bhnd_nvram_sprom_storage *inp;
 const struct bhnd_nvram_vardefn *var;
 bhnd_nvram_type var_btype;
 uint32_t intv;
 size_t ilen, ipos, iwidth;
 size_t nelem;
 bool all_bits_set;
 int error;


 var = bhnd_nvram_get_vardefn(entry->vid);
 BHND_NV_ASSERT(var != ((void*)0), ("invalid entry"));
 if ((error = bhnd_sprom_opcode_eval_var(state, entry))) {
  BHND_NV_LOG("variable evaluation failed: %d\n", error);
  return (error);
 }

 nelem = state->var.nelem;
 if (nelem > var->nelem) {
  BHND_NV_LOG("SPROM array element count %zu cannot be "
      "represented by '%s' element count of %hhu\n", nelem,
      var->name, var->nelem);
  return (EFTYPE);
 }


 var_btype = bhnd_nvram_base_type(var->type);


 if ((iwidth = bhnd_nvram_value_size(((void*)0), 0, var_btype, 1)) == 0) {


  BHND_NV_LOG("invalid SPROM data type: %d", var->type);
  return (EFTYPE);
 }
 ilen = nelem * iwidth;


 inp = storage;
 if (ilen > sizeof(*storage)) {
  BHND_NV_LOG("error decoding '%s', SPROM_ARRAY_MAXLEN "
      "incorrect\n", var->name);
  return (EFTYPE);
 }



 memset(inp, 0, ilen);




 if ((error = bhnd_sprom_opcode_seek(state, entry))) {
  BHND_NV_LOG("variable seek failed: %d\n", error);
  return (error);
 }

 ipos = 0;
 intv = 0x0;
 if (var->flags & BHND_NVRAM_VF_IGNALL1)
  all_bits_set = 1;
 else
  all_bits_set = 0;
 while ((error = bhnd_sprom_opcode_next_binding(state)) == 0) {
  bhnd_sprom_opcode_bind *binding;
  bhnd_sprom_opcode_var *binding_var;
  bhnd_nvram_type intv_type;
  size_t offset;
  size_t nbyte;
  uint32_t skip_in_bytes;
  void *ptr;

  BHND_NV_ASSERT(
      state->var_state >= SPROM_OPCODE_VAR_STATE_OPEN,
      ("invalid var state"));
  BHND_NV_ASSERT(state->var.have_bind, ("invalid bind state"));

  binding_var = &state->var;
  binding = &state->var.bind;

  if (ipos >= nelem) {
   BHND_NV_LOG("output skip %u positioned "
       "%zu beyond nelem %zu\n",
       binding->skip_out, ipos, nelem);
   return (EINVAL);
  }


  skip_in_bytes = binding->skip_in;
  error = bhnd_sprom_opcode_apply_scale(state, &skip_in_bytes);
  if (error)
   return (error);


  offset = state->offset;
  for (size_t i = 0; i < binding->count; i++) {


   error = bhnd_nvram_sprom_read_offset(var, io,
       binding_var->base_type,
       offset,
       binding_var->mask,
       binding_var->shift,
       &intv);
   if (error)
    return (error);



   if (var->flags & BHND_NVRAM_VF_IGNALL1 &&
       all_bits_set)
   {
    uint32_t all1;

    all1 = binding_var->mask;
    if (binding_var->shift > 0)
     all1 >>= binding_var->shift;
    else if (binding_var->shift < 0)
     all1 <<= -binding_var->shift;

    if ((intv & all1) != all1)
     all_bits_set = 0;
   }




   if (binding->skip_in_negative) {
    offset -= skip_in_bytes;
   } else {
    offset += skip_in_bytes;
   }



   if (binding->skip_out == 0)
    continue;





   if (bhnd_nvram_is_signed_type(var_btype))
    intv_type = BHND_NVRAM_TYPE_INT32;
   else
    intv_type = BHND_NVRAM_TYPE_UINT32;



   ptr = (uint8_t *)inp + (iwidth * ipos);


   nbyte = iwidth;
   error = bhnd_nvram_value_coerce(&intv, sizeof(intv),
       intv_type, ptr, &nbyte, var_btype);
   if (error)
    return (error);


   intv = 0x0;


   if (SIZE_MAX - binding->skip_out < ipos) {
    BHND_NV_LOG("output skip %u would overflow "
        "%zu\n", binding->skip_out, ipos);
    return (EINVAL);
   }

   ipos += binding->skip_out;
  }
 }



 BHND_NV_ASSERT(error != 0, ("loop terminated early"));
 if (error != ENOENT) {
  return (error);
 }



 if ((var->flags & BHND_NVRAM_VF_IGNALL1) && all_bits_set)
  return (ENOENT);


 return (bhnd_nvram_val_init(val, var->fmt, inp, ilen, var->type,
     BHND_NVRAM_VAL_BORROW_DATA));
}
