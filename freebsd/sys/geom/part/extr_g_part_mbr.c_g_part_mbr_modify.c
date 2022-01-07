
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_parms; int gpp_type; } ;
struct TYPE_2__ {int dp_typ; } ;
struct g_part_mbr_entry {TYPE_1__ ent; } ;
struct g_part_entry {int dummy; } ;


 int EINVAL ;
 int G_PART_PARM_LABEL ;
 int G_PART_PARM_TYPE ;
 int mbr_parse_type (int ,int *) ;

__attribute__((used)) static int
g_part_mbr_modify(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_part_mbr_entry *entry;

 if (gpp->gpp_parms & G_PART_PARM_LABEL)
  return (EINVAL);

 entry = (struct g_part_mbr_entry *)baseentry;
 if (gpp->gpp_parms & G_PART_PARM_TYPE)
  return (mbr_parse_type(gpp->gpp_type, &entry->ent.dp_typ));
 return (0);
}
