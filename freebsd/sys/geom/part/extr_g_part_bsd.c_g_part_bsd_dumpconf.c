
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {int p_fstype; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;


 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_part_bsd_dumpconf(struct g_part_table *table, struct g_part_entry *baseentry,
    struct sbuf *sb, const char *indent)
{
 struct g_part_bsd_entry *entry;

 entry = (struct g_part_bsd_entry *)baseentry;
 if (indent == ((void*)0)) {

  sbuf_printf(sb, " xs BSD xt %u", entry->part.p_fstype);
 } else if (entry != ((void*)0)) {

  sbuf_printf(sb, "%s<rawtype>%u</rawtype>\n", indent,
      entry->part.p_fstype);
 } else {

 }
}
