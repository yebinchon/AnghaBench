
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {char* ent_type; } ;
struct g_part_apm_entry {TYPE_1__ ent; } ;


 int APM_ENT_TYPE_APPLE_BOOT ;
 int APM_ENT_TYPE_APPLE_HFS ;
 int APM_ENT_TYPE_APPLE_UFS ;
 int APM_ENT_TYPE_FREEBSD ;
 int APM_ENT_TYPE_FREEBSD_NANDFS ;
 int APM_ENT_TYPE_FREEBSD_SWAP ;
 int APM_ENT_TYPE_FREEBSD_UFS ;
 int APM_ENT_TYPE_FREEBSD_VINUM ;
 int APM_ENT_TYPE_FREEBSD_ZFS ;
 int G_PART_ALIAS_APPLE_BOOT ;
 int G_PART_ALIAS_APPLE_HFS ;
 int G_PART_ALIAS_APPLE_UFS ;
 int G_PART_ALIAS_FREEBSD ;
 int G_PART_ALIAS_FREEBSD_NANDFS ;
 int G_PART_ALIAS_FREEBSD_SWAP ;
 int G_PART_ALIAS_FREEBSD_UFS ;
 int G_PART_ALIAS_FREEBSD_VINUM ;
 int G_PART_ALIAS_FREEBSD_ZFS ;
 size_t MIN (int,size_t) ;
 int bcopy (char const*,char*,size_t) ;
 char const* g_part_alias_name (int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static const char *
g_part_apm_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_apm_entry *entry;
 const char *type;
 size_t len;

 entry = (struct g_part_apm_entry *)baseentry;
 type = entry->ent.ent_type;
 if (!strcmp(type, APM_ENT_TYPE_APPLE_BOOT))
  return (g_part_alias_name(G_PART_ALIAS_APPLE_BOOT));
 if (!strcmp(type, APM_ENT_TYPE_APPLE_HFS))
  return (g_part_alias_name(G_PART_ALIAS_APPLE_HFS));
 if (!strcmp(type, APM_ENT_TYPE_APPLE_UFS))
  return (g_part_alias_name(G_PART_ALIAS_APPLE_UFS));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD_NANDFS))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_NANDFS));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD_SWAP))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_SWAP));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD_UFS))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_UFS));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD_VINUM))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_VINUM));
 if (!strcmp(type, APM_ENT_TYPE_FREEBSD_ZFS))
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_ZFS));
 buf[0] = '!';
 len = MIN(sizeof(entry->ent.ent_type), bufsz - 2);
 bcopy(type, buf + 1, len);
 buf[len + 1] = '\0';
 return (buf);
}
