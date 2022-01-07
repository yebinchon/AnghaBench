
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_ldm_entry {scalar_t__ type; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ typ; int alias; } ;


 char const* g_part_alias_name (int ) ;
 TYPE_1__* ldm_alias_match ;
 int nitems (TYPE_1__*) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;

__attribute__((used)) static const char *
g_part_ldm_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_ldm_entry *entry;
 int i;

 entry = (struct g_part_ldm_entry *)baseentry;
 for (i = 0; i < nitems(ldm_alias_match); i++) {
  if (ldm_alias_match[i].typ == entry->type)
   return (g_part_alias_name(ldm_alias_match[i].alias));
 }
 snprintf(buf, bufsz, "!%d", entry->type);
 return (buf);
}
