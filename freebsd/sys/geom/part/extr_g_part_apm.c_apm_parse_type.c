
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APM_ENT_TYPE_APPLE_BOOT ;
 int APM_ENT_TYPE_APPLE_HFS ;
 int APM_ENT_TYPE_APPLE_UFS ;
 int APM_ENT_TYPE_FREEBSD ;
 int APM_ENT_TYPE_FREEBSD_NANDFS ;
 int APM_ENT_TYPE_FREEBSD_SWAP ;
 int APM_ENT_TYPE_FREEBSD_UFS ;
 int APM_ENT_TYPE_FREEBSD_VINUM ;
 int APM_ENT_TYPE_FREEBSD_ZFS ;
 int APM_ENT_TYPE_SELF ;
 int APM_ENT_TYPE_UNUSED ;
 int EINVAL ;
 int G_PART_ALIAS_APPLE_BOOT ;
 int G_PART_ALIAS_APPLE_HFS ;
 int G_PART_ALIAS_APPLE_UFS ;
 int G_PART_ALIAS_FREEBSD ;
 int G_PART_ALIAS_FREEBSD_NANDFS ;
 int G_PART_ALIAS_FREEBSD_SWAP ;
 int G_PART_ALIAS_FREEBSD_UFS ;
 int G_PART_ALIAS_FREEBSD_VINUM ;
 int G_PART_ALIAS_FREEBSD_ZFS ;
 char* g_part_alias_name (int ) ;
 int strcasecmp (char const*,char const*) ;
 int strcmp (char const*,int ) ;
 int strcpy (char*,int ) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int
apm_parse_type(const char *type, char *buf, size_t bufsz)
{
 const char *alias;

 if (type[0] == '!') {
  type++;
  if (strlen(type) > bufsz)
   return (EINVAL);
  if (!strcmp(type, APM_ENT_TYPE_SELF) ||
      !strcmp(type, APM_ENT_TYPE_UNUSED))
   return (EINVAL);
  strncpy(buf, type, bufsz);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_APPLE_BOOT);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_APPLE_BOOT);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_APPLE_HFS);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_APPLE_HFS);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_APPLE_UFS);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_APPLE_UFS);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD_NANDFS);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD_NANDFS);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD_SWAP);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD_SWAP);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD_UFS);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD_UFS);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD_VINUM);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD_VINUM);
  return (0);
 }
 alias = g_part_alias_name(G_PART_ALIAS_FREEBSD_ZFS);
 if (!strcasecmp(type, alias)) {
  strcpy(buf, APM_ENT_TYPE_FREEBSD_ZFS);
  return (0);
 }
 return (EINVAL);
}
