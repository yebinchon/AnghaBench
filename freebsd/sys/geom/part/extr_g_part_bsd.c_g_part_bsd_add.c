
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_parms; int gpp_type; scalar_t__ gpp_start; int gpp_size; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd_table {scalar_t__ offset; } ;
struct TYPE_2__ {int p_fstype; scalar_t__ p_cpg; scalar_t__ p_frag; scalar_t__ p_fsize; scalar_t__ p_offset; int p_size; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;


 int EINVAL ;
 int G_PART_PARM_LABEL ;
 int bsd_parse_type (int ,int *) ;

__attribute__((used)) static int
g_part_bsd_add(struct g_part_table *basetable, struct g_part_entry *baseentry,
    struct g_part_parms *gpp)
{
 struct g_part_bsd_entry *entry;
 struct g_part_bsd_table *table;

 if (gpp->gpp_parms & G_PART_PARM_LABEL)
  return (EINVAL);

 entry = (struct g_part_bsd_entry *)baseentry;
 table = (struct g_part_bsd_table *)basetable;

 entry->part.p_size = gpp->gpp_size;
 entry->part.p_offset = gpp->gpp_start + table->offset;
 entry->part.p_fsize = 0;
 entry->part.p_frag = 0;
 entry->part.p_cpg = 0;
 return (bsd_parse_type(gpp->gpp_type, &entry->part.p_fstype));
}
