
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_4__ {TYPE_1__* part; int altcyls; int nheads; int nsecs; } ;
struct g_part_vtoc8_table {TYPE_2__ vtoc; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;
struct TYPE_3__ {int tag; } ;


 int be16dec (int *) ;
 int sbuf_printf (struct sbuf*,char*,char const*,int ,...) ;

__attribute__((used)) static void
g_part_vtoc8_dumpconf(struct g_part_table *basetable,
    struct g_part_entry *entry, struct sbuf *sb, const char *indent)
{
 struct g_part_vtoc8_table *table;

 table = (struct g_part_vtoc8_table *)basetable;
 if (indent == ((void*)0)) {

  sbuf_printf(sb, " xs SUN sc %u hd %u alt %u",
      be16dec(&table->vtoc.nsecs), be16dec(&table->vtoc.nheads),
      be16dec(&table->vtoc.altcyls));
 } else if (entry != ((void*)0)) {

  sbuf_printf(sb, "%s<rawtype>%u</rawtype>\n", indent,
      be16dec(&table->vtoc.part[entry->gpe_index - 1].tag));
 } else {

 }
}
