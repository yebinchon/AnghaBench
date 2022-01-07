
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct g_provider {int sectorsize; int mediasize; } ;
struct g_part_table {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;
struct disklabel {int dummy; } ;


 int BBSIZE ;
 scalar_t__ DISKMAGIC ;
 int ENOSPC ;
 int ENOTBLK ;
 int ENXIO ;
 int G_PART_PROBE_PRI_HIGH ;
 int g_free (int *) ;
 int * g_read_data (struct g_consumer*,int,int,int*) ;
 scalar_t__ le32dec (int *) ;

__attribute__((used)) static int
g_part_bsd_probe(struct g_part_table *table, struct g_consumer *cp)
{
 struct g_provider *pp;
 u_char *buf;
 uint32_t magic1, magic2;
 int error;

 pp = cp->provider;


 if (pp->sectorsize < sizeof(struct disklabel) ||
     pp->mediasize < BBSIZE)
  return (ENOSPC);
 if (BBSIZE % pp->sectorsize)
  return (ENOTBLK);


 buf = g_read_data(cp, pp->sectorsize, pp->sectorsize, &error);
 if (buf == ((void*)0))
  return (error);
 magic1 = le32dec(buf + 0);
 magic2 = le32dec(buf + 132);
 g_free(buf);
 return ((magic1 == DISKMAGIC && magic2 == DISKMAGIC)
     ? G_PART_PROBE_PRI_HIGH : ENXIO);
}
