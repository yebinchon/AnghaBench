
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {scalar_t__ gpt_depth; } ;
struct g_consumer {struct g_provider* provider; } ;


 scalar_t__ DOSMAGIC ;
 int DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int EBRSIZE ;
 int ENOSPC ;
 int ENXIO ;
 int G_PART_PROBE_PRI_NORM ;
 int g_free (int*) ;
 int g_getattr (char*,struct g_consumer*,char**) ;
 int* g_read_data (struct g_consumer*,long,int,int*) ;
 scalar_t__ le16dec (int*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
g_part_ebr_probe(struct g_part_table *table, struct g_consumer *cp)
{
 char type[64];
 struct g_provider *pp;
 u_char *buf, *p;
 int error, index, res;
 uint16_t magic;

 pp = cp->provider;


 if (pp->sectorsize < EBRSIZE || pp->mediasize < pp->sectorsize)
  return (ENOSPC);
 if (pp->sectorsize > 4096)
  return (ENXIO);


 if (table->gpt_depth == 0)
  return (ENXIO);
 error = g_getattr("PART::scheme", cp, &type);
 if (error != 0)
  return (error);
 if (strcmp(type, "MBR") != 0)
  return (ENXIO);

 error = g_getattr("PART::type", cp, &type);
 if (error != 0)
  return (error);
 if (strcmp(type, "ebr") != 0)
  return (ENXIO);


 buf = g_read_data(cp, 0L, pp->sectorsize, &error);
 if (buf == ((void*)0))
  return (error);


 res = ENXIO;

 magic = le16dec(buf + DOSMAGICOFFSET);
 if (magic != DOSMAGIC)
  goto out;

 for (index = 0; index < 2; index++) {
  p = buf + DOSPARTOFF + index * DOSPARTSIZE;
  if (p[0] != 0 && p[0] != 0x80)
   goto out;
 }
 res = G_PART_PROBE_PRI_NORM;

 out:
 g_free(buf);
 return (res);
}
