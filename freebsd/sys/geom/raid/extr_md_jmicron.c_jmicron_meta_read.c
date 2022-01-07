
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct jmicron_raid_conf {int signature; } ;
struct g_provider {int name; scalar_t__ sectorsize; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int ,...) ;
 int JMICRON_MAGIC ;
 int M_MD_JMICRON ;
 int M_WAITOK ;
 int free (struct jmicron_raid_conf*,int ) ;
 int g_free (char*) ;
 char* g_read_data (struct g_consumer*,scalar_t__,scalar_t__,int*) ;
 struct jmicron_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct jmicron_raid_conf*,char*,int ) ;
 int min (int,scalar_t__) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static struct jmicron_raid_conf *
jmicron_meta_read(struct g_consumer *cp)
{
 struct g_provider *pp;
 struct jmicron_raid_conf *meta;
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
 meta = (struct jmicron_raid_conf *)buf;


 if (strncmp(meta->signature, JMICRON_MAGIC, strlen(JMICRON_MAGIC))) {
  G_RAID_DEBUG(1, "JMicron signature check failed on %s", pp->name);
  g_free(buf);
  return (((void*)0));
 }
 meta = malloc(sizeof(*meta), M_MD_JMICRON, M_WAITOK);
 memcpy(meta, buf, min(sizeof(*meta), pp->sectorsize));
 g_free(buf);


 for (checksum = 0, ptr = (uint16_t *)meta, i = 0; i < 64; i++)
  checksum += *ptr++;
 if (checksum != 0) {
  G_RAID_DEBUG(1, "JMicron checksum check failed on %s", pp->name);
  free(meta, M_MD_JMICRON);
  return (((void*)0));
 }

 return (meta);
}
