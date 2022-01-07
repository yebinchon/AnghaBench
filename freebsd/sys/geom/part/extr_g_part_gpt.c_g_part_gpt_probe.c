
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {scalar_t__ gpt_depth; } ;
struct g_consumer {struct g_provider* provider; } ;


 int DOSMAGIC ;
 int DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int ENOSPC ;
 int ENXIO ;
 int GPT_HDR_SIG ;
 int G_PART_PROBE_PRI_HIGH ;
 int G_PART_PROBE_PRI_LOW ;
 int MBRSIZE ;
 int NDOSPART ;
 int allow_nesting ;
 int g_free (int*) ;
 int* g_read_data (struct g_consumer*,long,int,int*) ;
 int le16dec (int*) ;
 int memcmp (int*,int ,int) ;

__attribute__((used)) static int
g_part_gpt_probe(struct g_part_table *table, struct g_consumer *cp)
{
 struct g_provider *pp;
 u_char *buf;
 int error, index, pri, res;


 if (!allow_nesting && table->gpt_depth != 0)
  return (ENXIO);

 pp = cp->provider;
 if (pp->sectorsize < MBRSIZE || pp->mediasize < 6 * pp->sectorsize)
  return (ENOSPC);







 buf = g_read_data(cp, 0L, pp->sectorsize, &error);
 if (buf == ((void*)0))
  return (error);
 res = le16dec(buf + DOSMAGICOFFSET);
 pri = G_PART_PROBE_PRI_LOW;
 if (res == DOSMAGIC) {
  for (index = 0; index < NDOSPART; index++) {
   if (buf[DOSPARTOFF + DOSPARTSIZE * index + 4] == 0xee)
    pri = G_PART_PROBE_PRI_HIGH;
  }
  g_free(buf);


  buf = g_read_data(cp, pp->sectorsize, pp->sectorsize, &error);
  if (buf == ((void*)0))
   return (error);
  res = memcmp(buf, GPT_HDR_SIG, 8);
  g_free(buf);
  if (res == 0)
   return (pri);
 } else
  g_free(buf);


 buf = g_read_data(cp, pp->mediasize - pp->sectorsize, pp->sectorsize,
     &error);
 if (buf == ((void*)0))
  return (error);
 res = memcmp(buf, GPT_HDR_SIG, 8);
 g_free(buf);
 return ((res == 0) ? pri : ENXIO);
}
