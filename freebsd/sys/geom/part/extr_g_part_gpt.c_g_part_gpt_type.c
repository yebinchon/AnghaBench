
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uuid {int dummy; } ;
struct g_part_uuid_alias {int alias; scalar_t__ uuid; } ;
struct g_part_table {int dummy; } ;
struct TYPE_2__ {struct uuid ent_type; } ;
struct g_part_gpt_entry {TYPE_1__ ent; } ;
struct g_part_entry {int dummy; } ;


 scalar_t__ EQUUID (struct uuid*,scalar_t__) ;
 char const* g_part_alias_name (int ) ;
 struct g_part_uuid_alias* gpt_uuid_alias_match ;
 int snprintf_uuid (char*,size_t,struct uuid*) ;

__attribute__((used)) static const char *
g_part_gpt_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_gpt_entry *entry;
 struct uuid *type;
 struct g_part_uuid_alias *uap;

 entry = (struct g_part_gpt_entry *)baseentry;
 type = &entry->ent.ent_type;
 for (uap = &gpt_uuid_alias_match[0]; uap->uuid; uap++)
  if (EQUUID(type, uap->uuid))
   return (g_part_alias_name(uap->alias));
 buf[0] = '!';
 snprintf_uuid(buf + 1, bufsz - 1, type);

 return (buf);
}
