
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int gpt_smhead; } ;
struct g_part_parms {int dummy; } ;



__attribute__((used)) static int
g_part_ebr_destroy(struct g_part_table *basetable, struct g_part_parms *gpp)
{


 basetable->gpt_smhead |= 1;
 return (0);
}
