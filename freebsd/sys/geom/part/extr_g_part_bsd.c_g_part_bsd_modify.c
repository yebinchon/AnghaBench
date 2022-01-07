
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_parms; int gpp_type; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {int p_fstype; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;


 int EINVAL ;
 int G_PART_PARM_LABEL ;
 int G_PART_PARM_TYPE ;
 int bsd_parse_type (int ,int *) ;

__attribute__((used)) static int
g_part_bsd_modify(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_part_bsd_entry *entry;

 if (gpp->gpp_parms & G_PART_PARM_LABEL)
  return (EINVAL);

 entry = (struct g_part_bsd_entry *)baseentry;
 if (gpp->gpp_parms & G_PART_PARM_TYPE)
  return (bsd_parse_type(gpp->gpp_type, &entry->part.p_fstype));
 return (0);
}
