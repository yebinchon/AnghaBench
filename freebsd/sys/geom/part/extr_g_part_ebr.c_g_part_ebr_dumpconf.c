
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {char const* dp_typ; int dp_flag; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;


 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_part_ebr_dumpconf(struct g_part_table *table, struct g_part_entry *baseentry,
    struct sbuf *sb, const char *indent)
{
 struct g_part_ebr_entry *entry;

 entry = (struct g_part_ebr_entry *)baseentry;
 if (indent == ((void*)0)) {

  sbuf_printf(sb, " xs MBREXT xt %u", entry->ent.dp_typ);
 } else if (entry != ((void*)0)) {

  sbuf_printf(sb, "%s<rawtype>%u</rawtype>\n", indent,
      entry->ent.dp_typ);
  if (entry->ent.dp_flag & 0x80)
   sbuf_printf(sb, "%s<attrib>active</attrib>\n", indent);
 } else {

 }
}
