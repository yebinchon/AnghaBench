
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct g_part_bsd64_entry {scalar_t__ fstype; int type_uuid; } ;
struct bsd64_uuid_alias {scalar_t__ fstype; int alias; int * uuid; } ;


 scalar_t__ EQUUID (int *,int *) ;
 scalar_t__ FS_OTHER ;
 int bsd64_uuid_unused ;
 struct bsd64_uuid_alias* dfbsd_alias_match ;
 struct bsd64_uuid_alias* fbsd_alias_match ;
 char const* g_part_alias_name (int ) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;
 int snprintf_uuid (char*,size_t,int *) ;

__attribute__((used)) static const char *
g_part_bsd64_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_bsd64_entry *entry;
 struct bsd64_uuid_alias *uap;

 entry = (struct g_part_bsd64_entry *)baseentry;
 if (entry->fstype != FS_OTHER) {
  for (uap = &dfbsd_alias_match[0]; uap->uuid != ((void*)0); uap++)
   if (uap->fstype == entry->fstype)
    return (g_part_alias_name(uap->alias));
 } else {
  for (uap = &fbsd_alias_match[0]; uap->uuid != ((void*)0); uap++)
   if (EQUUID(uap->uuid, &entry->type_uuid))
    return (g_part_alias_name(uap->alias));
  for (uap = &dfbsd_alias_match[0]; uap->uuid != ((void*)0); uap++)
   if (EQUUID(uap->uuid, &entry->type_uuid))
    return (g_part_alias_name(uap->alias));
 }
 if (EQUUID(&bsd64_uuid_unused, &entry->type_uuid))
  snprintf(buf, bufsz, "!%d", entry->fstype);
 else {
  buf[0] = '!';
  snprintf_uuid(buf + 1, bufsz - 1, &entry->type_uuid);
 }
 return (buf);
}
