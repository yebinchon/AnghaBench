
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_vardefn {int dummy; } ;
struct bhnd_nvram_sprom {int data; int state; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef int bhnd_sprom_opcode_idx_entry ;
typedef int bhnd_nvram_val ;


 int BHND_NV_ASSERT (int ,char*) ;
 struct bhnd_nvram_vardefn* SPROM_COOKIE_TO_NVRAM_VAR (void*) ;
 int bhnd_nvram_sprom_read_var (int *,int *,int ,union bhnd_nvram_sprom_storage*,int *) ;

__attribute__((used)) static int
bhnd_nvram_sprom_getvar_common(struct bhnd_nvram_data *nv, void *cookiep,
    union bhnd_nvram_sprom_storage *storage, bhnd_nvram_val *val)
{
 struct bhnd_nvram_sprom *sp;
 bhnd_sprom_opcode_idx_entry *entry;
 const struct bhnd_nvram_vardefn *var;

 BHND_NV_ASSERT(cookiep != ((void*)0), ("NULL variable cookiep"));

 sp = (struct bhnd_nvram_sprom *)nv;
 entry = cookiep;


 var = SPROM_COOKIE_TO_NVRAM_VAR(cookiep);
 BHND_NV_ASSERT(var != ((void*)0), ("invalid cookiep %p", cookiep));

 return (bhnd_nvram_sprom_read_var(&sp->state, entry, sp->data, storage,
     val));
}
