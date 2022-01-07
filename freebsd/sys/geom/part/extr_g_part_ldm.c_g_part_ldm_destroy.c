
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_table {int gpt_smhead; int gpt_smtail; TYPE_1__* gpt_gp; } ;
struct g_part_parms {int dummy; } ;
struct g_part_ldm_table {int db_offset; scalar_t__ is_gpt; } ;
struct TYPE_4__ {struct g_provider* provider; } ;
struct TYPE_3__ {int consumer; } ;


 int ENOSYS ;
 int LDM_DB_SIZE ;
 TYPE_2__* LIST_FIRST (int *) ;
 int* ldm_ph_off ;

__attribute__((used)) static int
g_part_ldm_destroy(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_part_ldm_table *table;
 struct g_provider *pp;

 table = (struct g_part_ldm_table *)basetable;





 if (table->is_gpt)
  return (ENOSYS);
 pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;




 basetable->gpt_smhead = (1 << ldm_ph_off[0]) | 1;





 if (table->db_offset + LDM_DB_SIZE ==
     pp->mediasize / pp->sectorsize)
  basetable->gpt_smtail = 1;
 return (0);
}
