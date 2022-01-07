
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int gpt_sectors; } ;
struct g_part_parms {int gpp_index; int gpp_start; } ;
typedef enum g_part_ctl { ____Placeholder_g_part_ctl } g_part_ctl ;


 int ECANCELED ;
 int G_PART_CTL_ADD ;
 int G_PART_CTL_DESTROY ;

__attribute__((used)) static int
g_part_ebr_precheck(struct g_part_table *table, enum g_part_ctl req,
    struct g_part_parms *gpp)
{
 if (req == G_PART_CTL_ADD)
  gpp->gpp_index = (gpp->gpp_start / table->gpt_sectors) + 1;
 return (0);

}
