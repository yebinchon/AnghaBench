
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_sprom {int state; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef void bhnd_sprom_opcode_idx_entry ;


 void* bhnd_sprom_opcode_index_find (int *,char const*) ;

__attribute__((used)) static void *
bhnd_nvram_sprom_find(struct bhnd_nvram_data *nv, const char *name)
{
 struct bhnd_nvram_sprom *sp;
 bhnd_sprom_opcode_idx_entry *entry;

 sp = (struct bhnd_nvram_sprom *)nv;

 entry = bhnd_sprom_opcode_index_find(&sp->state, name);
 return (entry);
}
