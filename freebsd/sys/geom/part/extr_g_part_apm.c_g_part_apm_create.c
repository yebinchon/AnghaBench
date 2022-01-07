
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {scalar_t__ gpt_depth; int gpt_entries; int gpt_first; void* gpt_last; } ;
struct g_part_parms {struct g_provider* gpp_provider; } ;
struct TYPE_4__ {int ent_pmblkcnt; int ent_start; int ent_size; int ent_type; int ent_name; int ent_sig; } ;
struct TYPE_3__ {int ddr_blksize; void* ddr_blkcount; int ddr_sig; } ;
struct g_part_apm_table {TYPE_2__ self; TYPE_1__ ddr; } ;


 int APM_DDR_SIG ;
 int APM_ENT_SIG ;
 char* APM_ENT_TYPE_SELF ;
 int ENOSPC ;
 int ENXIO ;
 void* MIN (int,int ) ;
 int UINT32_MAX ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
g_part_apm_create(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_provider *pp;
 struct g_part_apm_table *table;
 uint32_t last;


 if (basetable->gpt_depth != 0)
  return (ENXIO);

 table = (struct g_part_apm_table *)basetable;
 pp = gpp->gpp_provider;
 if (pp->sectorsize != 512 ||
     pp->mediasize < (2 + 2 * basetable->gpt_entries) * pp->sectorsize)
  return (ENOSPC);


 last = MIN(pp->mediasize / pp->sectorsize, UINT32_MAX) - 1;

 basetable->gpt_first = 2 + basetable->gpt_entries;
 basetable->gpt_last = last;

 table->ddr.ddr_sig = APM_DDR_SIG;
 table->ddr.ddr_blksize = pp->sectorsize;
 table->ddr.ddr_blkcount = last + 1;

 table->self.ent_sig = APM_ENT_SIG;
 table->self.ent_pmblkcnt = basetable->gpt_entries + 1;
 table->self.ent_start = 1;
 table->self.ent_size = table->self.ent_pmblkcnt;
 strcpy(table->self.ent_name, "Apple");
 strcpy(table->self.ent_type, APM_ENT_TYPE_SELF);
 return (0);
}
