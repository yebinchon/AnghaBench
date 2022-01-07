
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_part_table {int dummy; } ;
struct g_part_entry {int dummy; } ;
struct TYPE_2__ {int p_fstype; } ;
struct g_part_bsd_entry {TYPE_1__ part; } ;


 int FS_BSDFFS ;
 int FS_NANDFS ;
 int FS_SWAP ;
 int FS_VINUM ;
 int FS_ZFS ;
 int G_PART_ALIAS_FREEBSD_NANDFS ;
 int G_PART_ALIAS_FREEBSD_SWAP ;
 int G_PART_ALIAS_FREEBSD_UFS ;
 int G_PART_ALIAS_FREEBSD_VINUM ;
 int G_PART_ALIAS_FREEBSD_ZFS ;
 char const* g_part_alias_name (int ) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char *
g_part_bsd_type(struct g_part_table *basetable, struct g_part_entry *baseentry,
    char *buf, size_t bufsz)
{
 struct g_part_bsd_entry *entry;
 int type;

 entry = (struct g_part_bsd_entry *)baseentry;
 type = entry->part.p_fstype;
 if (type == FS_NANDFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_NANDFS));
 if (type == FS_SWAP)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_SWAP));
 if (type == FS_BSDFFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_UFS));
 if (type == FS_VINUM)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_VINUM));
 if (type == FS_ZFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_ZFS));
 snprintf(buf, bufsz, "!%d", type);
 return (buf);
}
