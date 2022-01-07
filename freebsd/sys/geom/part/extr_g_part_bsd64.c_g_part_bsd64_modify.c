
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_parms; int gpp_type; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_entry {int dummy; } ;


 int EINVAL ;
 int G_PART_PARM_LABEL ;
 int G_PART_PARM_TYPE ;
 int bsd64_parse_type (int ,struct g_part_bsd64_entry*) ;

__attribute__((used)) static int
g_part_bsd64_modify(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct g_part_parms *gpp)
{
 struct g_part_bsd64_entry *entry;

 if (gpp->gpp_parms & G_PART_PARM_LABEL)
  return (EINVAL);

 entry = (struct g_part_bsd64_entry *)baseentry;
 if (gpp->gpp_parms & G_PART_PARM_TYPE)
  return (bsd64_parse_type(gpp->gpp_type, entry));
 return (0);
}
