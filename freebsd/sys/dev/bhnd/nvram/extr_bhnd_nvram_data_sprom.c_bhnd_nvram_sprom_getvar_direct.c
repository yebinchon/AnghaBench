
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_vardefn {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef int bhnd_sprom_opcode_state ;
struct TYPE_4__ {size_t vid; } ;
typedef TYPE_1__ bhnd_sprom_opcode_idx_entry ;
typedef int bhnd_sprom_layout ;
typedef int bhnd_nvram_val ;
typedef int bhnd_nvram_type ;


 int BHND_NV_LOG (char*,int) ;
 int ENOENT ;
 int ENXIO ;
 struct bhnd_nvram_vardefn* bhnd_nvram_find_vardefn (char const*) ;
 size_t bhnd_nvram_get_vardefn_id (struct bhnd_nvram_vardefn const*) ;
 int bhnd_nvram_sprom_ident (struct bhnd_nvram_io*,int const**) ;
 int bhnd_nvram_sprom_read_var (int *,TYPE_1__*,struct bhnd_nvram_io*,union bhnd_nvram_sprom_storage*,int *) ;
 int bhnd_nvram_val_encode (int *,void*,size_t*,int ) ;
 int bhnd_nvram_val_release (int *) ;
 int bhnd_sprom_opcode_init (int *,int const*) ;
 int bhnd_sprom_opcode_init_entry (int *,TYPE_1__*) ;
 int bhnd_sprom_opcode_next_var (int *) ;

__attribute__((used)) static int
bhnd_nvram_sprom_getvar_direct(struct bhnd_nvram_io *io, const char *name,
    void *buf, size_t *len, bhnd_nvram_type type)
{
 const bhnd_sprom_layout *layout;
 bhnd_sprom_opcode_state state;
 const struct bhnd_nvram_vardefn *var;
 size_t vid;
 int error;


 if ((var = bhnd_nvram_find_vardefn(name)) == ((void*)0))
  return (ENOENT);

 vid = bhnd_nvram_get_vardefn_id(var);


 if ((error = bhnd_nvram_sprom_ident(io, &layout)))
  return (error);


 if ((error = bhnd_sprom_opcode_init(&state, layout))) {
  BHND_NV_LOG("error initializing opcode state: %d\n", error);
  return (ENXIO);
 }


 while ((error = bhnd_sprom_opcode_next_var(&state)) == 0) {
  bhnd_sprom_opcode_idx_entry entry;
  union bhnd_nvram_sprom_storage storage;
  bhnd_nvram_val val;


  if ((error = bhnd_sprom_opcode_init_entry(&state, &entry)))
   return (error);


  if (entry.vid != vid)
   continue;


  error = bhnd_nvram_sprom_read_var(&state, &entry, io, &storage,
      &val);
  if (error)
   return (error);


  error = bhnd_nvram_val_encode(&val, buf, len, type);


  bhnd_nvram_val_release(&val);
  return (error);
 }


 if (error == ENOENT)
  return (ENOENT);


 return (error);
}
