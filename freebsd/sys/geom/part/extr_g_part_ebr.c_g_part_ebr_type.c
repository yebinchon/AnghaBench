
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_4__ {scalar_t__ dp_typ; } ;
struct g_part_ebr_entry {TYPE_1__ ent; } ;
struct TYPE_5__ {scalar_t__ typ; int alias; } ;


 TYPE_2__* ebr_alias_match ;
 char const* g_part_alias_name (int ) ;
 int nitems (TYPE_2__*) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char *
g_part_ebr_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_ebr_entry *entry;
 int i;

 entry = (struct g_part_ebr_entry *)baseentry;
 for (i = 0; i < nitems(ebr_alias_match); i++) {
  if (ebr_alias_match[i].typ == entry->ent.dp_typ)
   return (g_part_alias_name(ebr_alias_match[i].alias));
 }
 snprintf(buf, bufsz, "!%d", entry->ent.dp_typ);
 return (buf);
}
