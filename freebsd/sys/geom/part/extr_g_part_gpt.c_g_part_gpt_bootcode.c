
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_parms {int gpp_codeptr; int gpp_codesize; } ;
struct g_part_gpt_table {int mbr; } ;


 size_t DOSPARTOFF ;
 size_t MIN (size_t,int ) ;
 int bcopy (int ,int ,size_t) ;
 int bzero (int ,size_t) ;

__attribute__((used)) static int
g_part_gpt_bootcode(struct g_part_table *basetable, struct g_part_parms *gpp)
{
 struct g_part_gpt_table *table;
 size_t codesz;

 codesz = DOSPARTOFF;
 table = (struct g_part_gpt_table *)basetable;
 bzero(table->mbr, codesz);
 codesz = MIN(codesz, gpp->gpp_codesize);
 if (codesz > 0)
  bcopy(gpp->gpp_codeptr, table->mbr, codesz);
 return (0);
}
