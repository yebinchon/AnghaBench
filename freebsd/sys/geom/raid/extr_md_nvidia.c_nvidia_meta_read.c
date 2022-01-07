
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct nvidia_raid_conf {int config_size; int state; int type; int nvidia_id; } ;
struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int G_RAID_DEBUG (int,char*,int,...) ;
 int M_MD_NVIDIA ;
 int M_WAITOK ;
 int NVIDIA_MAGIC ;
 int NVIDIA_S_IDLE ;
 int NVIDIA_S_INIT ;
 int NVIDIA_S_REBUILD ;
 int NVIDIA_S_SYNC ;
 int NVIDIA_T_CONCAT ;
 int NVIDIA_T_RAID0 ;
 int NVIDIA_T_RAID01 ;
 int NVIDIA_T_RAID1 ;
 int NVIDIA_T_RAID3 ;
 int NVIDIA_T_RAID5 ;
 int NVIDIA_T_RAID5_SYM ;
 int free (struct nvidia_raid_conf*,int ) ;
 int g_free (char*) ;
 char* g_read_data (struct g_consumer*,scalar_t__,int,int*) ;
 struct nvidia_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct nvidia_raid_conf*,char*,int ) ;
 int min (int,int) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static struct nvidia_raid_conf *
nvidia_meta_read(struct g_consumer *cp)
{
 struct g_provider *pp;
 struct nvidia_raid_conf *meta;
 char *buf;
 int error, i;
 uint32_t checksum, *ptr;

 pp = cp->provider;


 buf = g_read_data(cp,
     pp->mediasize - 2 * pp->sectorsize, pp->sectorsize, &error);
 if (buf == ((void*)0)) {
  G_RAID_DEBUG(1, "Cannot read metadata from %s (error=%d).",
      pp->name, error);
  return (((void*)0));
 }
 meta = (struct nvidia_raid_conf *)buf;


 if (strncmp(meta->nvidia_id, NVIDIA_MAGIC, strlen(NVIDIA_MAGIC))) {
  G_RAID_DEBUG(1, "NVIDIA signature check failed on %s", pp->name);
  g_free(buf);
  return (((void*)0));
 }
 if (meta->config_size > 128 ||
     meta->config_size < 30) {
  G_RAID_DEBUG(1, "NVIDIA metadata size looks wrong: %d",
      meta->config_size);
  g_free(buf);
  return (((void*)0));
 }
 meta = malloc(sizeof(*meta), M_MD_NVIDIA, M_WAITOK);
 memcpy(meta, buf, min(sizeof(*meta), pp->sectorsize));
 g_free(buf);


 for (checksum = 0, ptr = (uint32_t *)meta,
     i = 0; i < meta->config_size; i++)
  checksum += *ptr++;
 if (checksum != 0) {
  G_RAID_DEBUG(1, "NVIDIA checksum check failed on %s", pp->name);
  free(meta, M_MD_NVIDIA);
  return (((void*)0));
 }


 if (meta->state != NVIDIA_S_IDLE && meta->state != NVIDIA_S_INIT &&
     meta->state != NVIDIA_S_REBUILD && meta->state != NVIDIA_S_SYNC) {
  G_RAID_DEBUG(1, "NVIDIA unknown state on %s (0x%02x)",
      pp->name, meta->state);
  free(meta, M_MD_NVIDIA);
  return (((void*)0));
 }


 if (meta->type != NVIDIA_T_RAID0 && meta->type != NVIDIA_T_RAID1 &&
     meta->type != NVIDIA_T_RAID3 && meta->type != NVIDIA_T_RAID5 &&
     meta->type != NVIDIA_T_RAID5_SYM &&
     meta->type != NVIDIA_T_RAID01 && meta->type != NVIDIA_T_CONCAT) {
  G_RAID_DEBUG(1, "NVIDIA unknown RAID level on %s (0x%02x)",
      pp->name, meta->type);
  free(meta, M_MD_NVIDIA);
  return (((void*)0));
 }

 return (meta);
}
