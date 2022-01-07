
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct g_provider {int sectorsize; } ;
struct g_part_table {int gpt_entry; } ;
struct g_part_entry {int gpe_start; scalar_t__ gpe_end; scalar_t__ gpe_deleted; } ;
struct g_part_ebr_table {int ebr; } ;
struct TYPE_2__ {int dp_size; int dp_start; int dp_ecyl; int dp_esect; int dp_ehd; int dp_typ; int dp_scyl; int dp_ssect; int dp_shd; int dp_flag; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;
struct g_consumer {struct g_provider* provider; } ;


 int DOSMAGIC ;
 int DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 struct g_part_entry* LIST_FIRST (int *) ;
 struct g_part_entry* LIST_NEXT (struct g_part_entry*,int ) ;
 int M_WAITOK ;
 int M_ZERO ;
 int bcopy (int ,int *,int) ;
 int bzero (int *,int) ;
 int ebr_entry_link (struct g_part_table*,int ,int ,int *) ;
 int g_free (int *) ;
 int * g_malloc (int,int) ;
 int g_write_data (struct g_consumer*,int,int *,int) ;
 int gpe_entry ;
 int le16enc (int *,int ) ;
 int le32enc (int *,int ) ;

__attribute__((used)) static int
g_part_ebr_write(struct g_part_table *basetable, struct g_consumer *cp)
{

 struct g_part_ebr_table *table;

 struct g_provider *pp;
 struct g_part_entry *baseentry, *next;
 struct g_part_ebr_entry *entry;
 u_char *buf;
 u_char *p;
 int error;

 pp = cp->provider;
 buf = g_malloc(pp->sectorsize, M_WAITOK | M_ZERO);

 table = (struct g_part_ebr_table *)basetable;
 bcopy(table->ebr, buf, DOSPARTOFF);

 le16enc(buf + DOSMAGICOFFSET, DOSMAGIC);

 baseentry = LIST_FIRST(&basetable->gpt_entry);
 while (baseentry != ((void*)0) && baseentry->gpe_deleted)
  baseentry = LIST_NEXT(baseentry, gpe_entry);


 if (baseentry == ((void*)0)) {
  error = g_write_data(cp, 0, buf, pp->sectorsize);
  goto out;
 }





 if (baseentry->gpe_start != 0) {
  ebr_entry_link(basetable, (uint32_t)baseentry->gpe_start,
      (uint32_t)baseentry->gpe_end, buf + DOSPARTOFF);
  error = g_write_data(cp, 0, buf, pp->sectorsize);
  if (error)
   goto out;
 }

 do {
  entry = (struct g_part_ebr_entry *)baseentry;

  p = buf + DOSPARTOFF;
  p[0] = entry->ent.dp_flag;
  p[1] = entry->ent.dp_shd;
  p[2] = entry->ent.dp_ssect;
  p[3] = entry->ent.dp_scyl;
  p[4] = entry->ent.dp_typ;
  p[5] = entry->ent.dp_ehd;
  p[6] = entry->ent.dp_esect;
  p[7] = entry->ent.dp_ecyl;
  le32enc(p + 8, entry->ent.dp_start);
  le32enc(p + 12, entry->ent.dp_size);

  next = LIST_NEXT(baseentry, gpe_entry);
  while (next != ((void*)0) && next->gpe_deleted)
   next = LIST_NEXT(next, gpe_entry);

  p += DOSPARTSIZE;
  if (next != ((void*)0))
   ebr_entry_link(basetable, (uint32_t)next->gpe_start,
       (uint32_t)next->gpe_end, p);
  else
   bzero(p, DOSPARTSIZE);

  error = g_write_data(cp, baseentry->gpe_start * pp->sectorsize,
      buf, pp->sectorsize);

  if (baseentry->gpe_start == 0)
   bzero(buf, DOSPARTOFF);

  baseentry = next;
 } while (!error && baseentry != ((void*)0));

 out:
 g_free(buf);
 return (error);
}
