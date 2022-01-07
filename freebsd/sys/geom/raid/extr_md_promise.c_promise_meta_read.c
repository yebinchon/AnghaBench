
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct promise_raid_conf {scalar_t__ checksum; int integrity; int total_disks; int disk_offset_high; int disk_sectors_high; int disk_rebuild_high; int disk_rebuild; int total_sectors_high; int rebuild_lba64; int sector_size; scalar_t__ backup_time; int promise_id; } ;
struct g_provider {int sectorsize; int name; scalar_t__ mediasize; } ;
struct g_consumer {struct g_provider* provider; } ;


 int FREEBSD_MAGIC ;
 int G_RAID_DEBUG (int,char*,int ,...) ;
 int MAXPHYS ;
 int MIN (int,int) ;
 int M_MD_PROMISE ;
 int M_WAITOK ;
 int PROMISE_I_VALID ;
 int PROMISE_MAGIC ;
 int PROMISE_MAX_DISKS ;
 int PROMISE_MAX_SUBDISKS ;
 int PROMISE_META_OFFSET ;
 int UINT32_MAX ;
 int UINT64_MAX ;
 int free (struct promise_raid_conf*,int ) ;
 int g_free (char*) ;
 char* g_read_data (struct g_consumer*,scalar_t__,int,int*) ;
 struct promise_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct promise_raid_conf*,char*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int
promise_meta_read(struct g_consumer *cp, struct promise_raid_conf **metaarr)
{
 struct g_provider *pp;
 struct promise_raid_conf *meta;
 char *buf;
 int error, i, subdisks;
 uint32_t checksum, *ptr;

 pp = cp->provider;
 subdisks = 0;

 if (pp->sectorsize * 4 > MAXPHYS) {
  G_RAID_DEBUG(1, "%s: Blocksize is too big.", pp->name);
  return (subdisks);
 }
next:

 buf = g_read_data(cp, pp->mediasize - pp->sectorsize *
     (63 - subdisks * PROMISE_META_OFFSET),
     pp->sectorsize * 4, &error);
 if (buf == ((void*)0)) {
  G_RAID_DEBUG(1, "Cannot read metadata from %s (error=%d).",
      pp->name, error);
  return (subdisks);
 }
 meta = (struct promise_raid_conf *)buf;


 if (strncmp(meta->promise_id, PROMISE_MAGIC, strlen(PROMISE_MAGIC)) &&
     strncmp(meta->promise_id, FREEBSD_MAGIC, strlen(FREEBSD_MAGIC))) {
  if (subdisks == 0)
   G_RAID_DEBUG(1,
       "Promise signature check failed on %s", pp->name);
  g_free(buf);
  return (subdisks);
 }
 meta = malloc(sizeof(*meta), M_MD_PROMISE, M_WAITOK);
 memcpy(meta, buf, MIN(sizeof(*meta), pp->sectorsize * 4));
 g_free(buf);


 for (checksum = 0, ptr = (uint32_t *)meta, i = 0; i < 511; i++)
  checksum += *ptr++;
 if (checksum != meta->checksum) {
  G_RAID_DEBUG(1, "Promise checksum check failed on %s", pp->name);
  free(meta, M_MD_PROMISE);
  return (subdisks);
 }

 if ((meta->integrity & PROMISE_I_VALID) == 0) {
  G_RAID_DEBUG(1, "Promise metadata is invalid on %s", pp->name);
  free(meta, M_MD_PROMISE);
  return (subdisks);
 }

 if (meta->total_disks > PROMISE_MAX_DISKS) {
  G_RAID_DEBUG(1, "Wrong number of disks on %s (%d)",
      pp->name, meta->total_disks);
  free(meta, M_MD_PROMISE);
  return (subdisks);
 }


 if (meta->disk_offset_high == 0x8b8c8d8e &&
     meta->disk_sectors_high == 0x8788898a &&
     meta->disk_rebuild_high == 0x83848586) {
  meta->disk_offset_high = 0;
  meta->disk_sectors_high = 0;
  if (meta->disk_rebuild == UINT32_MAX)
   meta->disk_rebuild_high = UINT32_MAX;
  else
   meta->disk_rebuild_high = 0;
  if (meta->total_sectors_high == 0x15161718) {
   meta->total_sectors_high = 0;
   meta->backup_time = 0;
   if (meta->rebuild_lba64 == 0x2122232425262728)
    meta->rebuild_lba64 = UINT64_MAX;
  }
 }
 if (meta->sector_size < 1 || meta->sector_size > 8)
  meta->sector_size = 1;


 *metaarr = meta;
 metaarr++;
 subdisks++;
 if (subdisks < PROMISE_MAX_SUBDISKS)
  goto next;

 return (subdisks);
}
