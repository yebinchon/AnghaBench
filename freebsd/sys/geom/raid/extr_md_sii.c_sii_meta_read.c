
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sii_raid_conf {int vendor_id; int version_major; int type; int version_minor; } ;
struct g_provider {int name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,...) ;
 int M_MD_SII ;
 int M_WAITOK ;
 int SII_T_CONCAT ;
 int SII_T_JBOD ;
 int SII_T_RAID0 ;
 int SII_T_RAID01 ;
 int SII_T_RAID1 ;
 int SII_T_RAID5 ;
 int SII_T_SPARE ;
 int free (struct sii_raid_conf*,int ) ;
 int g_free (char*) ;
 char* g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 struct sii_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct sii_raid_conf*,char*,int ) ;
 int min (int,scalar_t__) ;

__attribute__((used)) static struct sii_raid_conf *
sii_meta_read(struct g_consumer *cp)
{
 struct g_provider *pp;
 struct sii_raid_conf *meta;
 char *buf;
 int error, i;
 uint16_t checksum, *ptr;

 pp = cp->provider;


 buf = g_read_data(cp,
     pp->mediasize - pp->sectorsize, pp->sectorsize, &error);
 if (buf == ((void*)0)) {
  G_RAID_DEBUG(1, "Cannot read metadata from %s (error=%d).",
      pp->name, error);
  return (((void*)0));
 }
 meta = (struct sii_raid_conf *)buf;


 if (meta->vendor_id != 0x1095) {
  G_RAID_DEBUG(1, "SiI vendor ID check failed on %s (0x%04x)",
      pp->name, meta->vendor_id);
  g_free(buf);
  return (((void*)0));
 }


 if (meta->version_major != 2) {
  G_RAID_DEBUG(1, "SiI version check failed on %s (%d.%d)",
      pp->name, meta->version_major, meta->version_minor);
  g_free(buf);
  return (((void*)0));
 }
 meta = malloc(sizeof(*meta), M_MD_SII, M_WAITOK);
 memcpy(meta, buf, min(sizeof(*meta), pp->sectorsize));
 g_free(buf);


 for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i <= 159; i++)
  checksum += *ptr++;
 if (checksum != 0) {
  G_RAID_DEBUG(1, "SiI checksum check failed on %s", pp->name);
  free(meta, M_MD_SII);
  return (((void*)0));
 }


 if (meta->type != SII_T_RAID0 && meta->type != SII_T_RAID1 &&
     meta->type != SII_T_RAID01 && meta->type != SII_T_SPARE &&
     meta->type != SII_T_RAID5 && meta->type != SII_T_CONCAT &&
     meta->type != SII_T_JBOD) {
  G_RAID_DEBUG(1, "SiI unknown RAID level on %s (0x%02x)",
      pp->name, meta->type);
  free(meta, M_MD_SII);
  return (((void*)0));
 }

 return (meta);
}
