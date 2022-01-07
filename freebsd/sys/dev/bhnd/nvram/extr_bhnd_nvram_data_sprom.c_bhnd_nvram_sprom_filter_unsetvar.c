
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bhnd_nvram_vardefn {int flags; } ;
struct bhnd_nvram_sprom {int state; } ;
struct bhnd_nvram_data {int dummy; } ;
struct TYPE_3__ {int vid; } ;
typedef TYPE_1__ bhnd_sprom_opcode_idx_entry ;


 int BHND_NVRAM_VF_IGNALL1 ;
 int BHND_NV_ASSERT (int ,char*) ;
 int EINVAL ;
 int ENOENT ;
 struct bhnd_nvram_vardefn* bhnd_nvram_get_vardefn (int ) ;
 scalar_t__ bhnd_sprom_is_external_immutable (char const*) ;
 TYPE_1__* bhnd_sprom_opcode_index_find (int *,char const*) ;

__attribute__((used)) static int
bhnd_nvram_sprom_filter_unsetvar(struct bhnd_nvram_data *nv, const char *name)
{
 struct bhnd_nvram_sprom *sp;
 const struct bhnd_nvram_vardefn *var;
 bhnd_sprom_opcode_idx_entry *entry;

 sp = (struct bhnd_nvram_sprom *)nv;


 if (bhnd_sprom_is_external_immutable(name))
  return (EINVAL);


 if ((entry = bhnd_sprom_opcode_index_find(&sp->state, name)) == ((void*)0))
  return (ENOENT);

 var = bhnd_nvram_get_vardefn(entry->vid);
 BHND_NV_ASSERT(var != ((void*)0), ("missing variable definition"));





 if (!(var->flags & BHND_NVRAM_VF_IGNALL1))
  return (EINVAL);

 return (0);
}
