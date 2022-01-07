
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int dummy; } ;
struct g_part_table {scalar_t__ gpt_corrupt; TYPE_1__* gpt_gp; } ;
struct g_part_gpt_table {int dummy; } ;
struct TYPE_4__ {struct g_provider* provider; } ;
struct TYPE_3__ {int consumer; } ;


 TYPE_2__* LIST_FIRST (int *) ;
 int g_gpt_set_defaults (struct g_part_table*,struct g_provider*) ;
 int gpt_create_pmbr (struct g_part_gpt_table*,struct g_provider*) ;

__attribute__((used)) static int
g_part_gpt_recover(struct g_part_table *basetable)
{
 struct g_part_gpt_table *table;
 struct g_provider *pp;

 table = (struct g_part_gpt_table *)basetable;
 pp = LIST_FIRST(&basetable->gpt_gp->consumer)->provider;
 gpt_create_pmbr(table, pp);
 g_gpt_set_defaults(basetable, pp);
 basetable->gpt_corrupt = 0;
 return (0);
}
