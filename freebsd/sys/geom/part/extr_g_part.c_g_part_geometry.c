
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_part_table {int gpt_fixgeom; int gpt_heads; int gpt_sectors; } ;
struct g_consumer {int dummy; } ;
typedef scalar_t__ off_t ;


 scalar_t__ g_getattr (char*,struct g_consumer*,int*) ;
 int g_part_geometry_heads (scalar_t__,int,scalar_t__*,int*) ;

__attribute__((used)) static void
g_part_geometry(struct g_part_table *table, struct g_consumer *cp,
    off_t blocks)
{
 static u_int candidate_sectors[] = { 1, 9, 17, 33, 63, 0 };
 off_t chs, bestchs;
 u_int heads, sectors;
 int idx;

 if (g_getattr("GEOM::fwsectors", cp, &sectors) != 0 || sectors == 0 ||
     g_getattr("GEOM::fwheads", cp, &heads) != 0 || heads == 0) {
  table->gpt_fixgeom = 0;
  table->gpt_heads = 0;
  table->gpt_sectors = 0;
  bestchs = 0;
  for (idx = 0; candidate_sectors[idx] != 0; idx++) {
   sectors = candidate_sectors[idx];
   g_part_geometry_heads(blocks, sectors, &chs, &heads);
   if (chs == 0)
    continue;




   if (chs > bestchs || (chs == bestchs && heads > 1 &&
       table->gpt_sectors == 1)) {
    bestchs = chs;
    table->gpt_heads = heads;
    table->gpt_sectors = sectors;
   }
  }





  if (bestchs == 0) {
   table->gpt_heads = 255;
   table->gpt_sectors = 63;
  }
 } else {
  table->gpt_fixgeom = 1;
  table->gpt_heads = heads;
  table->gpt_sectors = sectors;
 }
}
