
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bhnd_nvram_vardefn {int fmt; } ;
struct bhnd_nvram_sprom {int state; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_4__ {int vid; } ;
typedef TYPE_1__ bhnd_sprom_opcode_idx_entry ;
typedef int bhnd_nvram_val ;


 int BHND_NVRAM_VAL_DYNAMIC ;
 int BHND_NV_ASSERT (int ,char*) ;
 int EINVAL ;
 int ENOENT ;
 struct bhnd_nvram_vardefn* bhnd_nvram_get_vardefn (int ) ;
 int bhnd_nvram_sprom_write_var (int *,TYPE_1__*,int *,int *) ;
 int bhnd_nvram_val_convert_new (int **,int ,int *,int ) ;
 int bhnd_nvram_val_release (int *) ;
 scalar_t__ bhnd_sprom_is_external_immutable (char const*) ;
 TYPE_1__* bhnd_sprom_opcode_index_find (int *,char const*) ;

__attribute__((used)) static int
bhnd_nvram_sprom_filter_setvar(struct bhnd_nvram_data *nv, const char *name,
    bhnd_nvram_val *value, bhnd_nvram_val **result)
{
 struct bhnd_nvram_sprom *sp;
 const struct bhnd_nvram_vardefn *var;
 bhnd_sprom_opcode_idx_entry *entry;
 bhnd_nvram_val *spval;
 int error;

 sp = (struct bhnd_nvram_sprom *)nv;


 if (bhnd_sprom_is_external_immutable(name))
  return (EINVAL);


 if ((entry = bhnd_sprom_opcode_index_find(&sp->state, name)) == ((void*)0))
  return (ENOENT);

 var = bhnd_nvram_get_vardefn(entry->vid);
 BHND_NV_ASSERT(var != ((void*)0), ("missing variable definition"));


 error = bhnd_nvram_val_convert_new(&spval, var->fmt, value,
     BHND_NVRAM_VAL_DYNAMIC);
 if (error)
  return (error);


 error = bhnd_nvram_sprom_write_var(&sp->state, entry, spval, ((void*)0));
 if (error) {
  bhnd_nvram_val_release(spval);
  return (error);
 }



 *result = spval;
 return (0);
}
