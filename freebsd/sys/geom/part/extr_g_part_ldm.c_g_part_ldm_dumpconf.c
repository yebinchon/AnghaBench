
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct g_part_table {int dummy; } ;
struct g_part_ldm_entry {int type; } ;
struct g_part_entry {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_part_ldm_dumpconf(struct g_part_table *basetable,
    struct g_part_entry *baseentry, struct sbuf *sb, const char *indent)
{
 struct g_part_ldm_entry *entry;

 entry = (struct g_part_ldm_entry *)baseentry;
 if (indent == ((void*)0)) {

  sbuf_printf(sb, " xs LDM xt %u", entry->type);
 } else if (entry != ((void*)0)) {

  sbuf_printf(sb, "%s<rawtype>%u</rawtype>\n", indent,
      entry->type);
 } else {

 }
}
