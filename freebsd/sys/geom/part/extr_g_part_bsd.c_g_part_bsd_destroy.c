
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int gpt_smhead; } ;
struct g_part_parms {int dummy; } ;
struct g_part_bsd_table {int * bbarea; } ;


 int g_free (int *) ;

__attribute__((used)) static int
g_part_bsd_destroy(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_part_bsd_table *table;

 table = (struct g_part_bsd_table *)basetable;
 if (table->bbarea != ((void*)0))
  g_free(table->bbarea);
 table->bbarea = ((void*)0);


 basetable->gpt_smhead |= 2;
 return (0);
}
