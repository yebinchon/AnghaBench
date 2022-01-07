
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_parms; int gpp_type; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_entry {int stor_uuid; } ;


 int EINVAL ;
 int G_PART_PARM_LABEL ;
 scalar_t__ bsd64_parse_type (int ,struct g_part_bsd64_entry*) ;
 int kern_uuidgen (int *,int) ;

__attribute__((used)) static int
g_part_bsd64_add(struct g_part_table *basetable, struct g_part_entry *baseentry,
    struct g_part_parms *gpp)
{
 struct g_part_bsd64_entry *entry;

 if (gpp->gpp_parms & G_PART_PARM_LABEL)
  return (EINVAL);

 entry = (struct g_part_bsd64_entry *)baseentry;
 if (bsd64_parse_type(gpp->gpp_type, entry) != 0)
  return (EINVAL);
 kern_uuidgen(&entry->stor_uuid, 1);
 return (0);
}
