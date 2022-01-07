
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_part_table {scalar_t__ gpt_entries; scalar_t__ gpt_last; scalar_t__ gpt_first; } ;
struct TYPE_4__ {int ent_pmblkcnt; scalar_t__ ent_size; } ;
struct TYPE_3__ {scalar_t__ ddr_blkcount; } ;
struct g_part_apm_table {int tivo_series1; TYPE_2__ self; TYPE_1__ ddr; } ;
struct apm_ent {scalar_t__ ent_size; scalar_t__ ent_start; int ent_type; } ;
struct g_part_apm_entry {struct apm_ent ent; } ;
struct g_consumer {int dummy; } ;


 int APM_ENT_TYPE_UNUSED ;
 int apm_read_ent (struct g_consumer*,int,struct apm_ent*,int ) ;
 scalar_t__ g_part_new_entry (struct g_part_table*,int,scalar_t__,scalar_t__) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
g_part_apm_read(struct g_part_table *basetable, struct g_consumer *cp)
{
 struct apm_ent ent;
 struct g_part_apm_entry *entry;
 struct g_part_apm_table *table;
 int error, index;

 table = (struct g_part_apm_table *)basetable;

 basetable->gpt_first = table->self.ent_size + 1;
 basetable->gpt_last = table->ddr.ddr_blkcount - 1;
 basetable->gpt_entries = table->self.ent_size - 1;

 for (index = table->self.ent_pmblkcnt - 1; index > 0; index--) {
  error = apm_read_ent(cp, index + 1, &ent, table->tivo_series1);
  if (error)
   continue;
  if (!strcmp(ent.ent_type, APM_ENT_TYPE_UNUSED))
   continue;
  entry = (struct g_part_apm_entry *)g_part_new_entry(basetable,
      index, ent.ent_start, ent.ent_start + ent.ent_size - 1);
  entry->ent = ent;
 }

 return (0);
}
