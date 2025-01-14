
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t u_int ;
struct g_raid_volume {size_t v_strip_size; size_t v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int sd_state; size_t sd_rebuild_pos; } ;
struct bio_queue_head {int dummy; } ;
typedef size_t off_t ;






 size_t MIN (size_t,size_t) ;
 int N ;
 int V2P (struct g_raid_volume*,size_t,size_t*,size_t*,size_t*) ;
 int bioq_init (struct bio_queue_head*) ;
 int g_raid_subdisk_kerneldump (struct g_raid_subdisk*,char*,int ,size_t,size_t) ;

__attribute__((used)) static int
g_raid_tr_kerneldump_raid1e(struct g_raid_tr_object *tr,
    void *virtual, vm_offset_t physical, off_t boffset, size_t blength)
{
 struct g_raid_volume *vol;
 struct g_raid_subdisk *sd;
 struct bio_queue_head queue;
 char *addr;
 off_t offset, start, length, remain;
 u_int no, strip_size;
 int i, error;

 vol = tr->tro_volume;
 addr = virtual;
 strip_size = vol->v_strip_size;
 V2P(vol, boffset, &no, &offset, &start);
 remain = blength;
 bioq_init(&queue);
 while (remain > 0) {
  length = MIN(strip_size - start, remain);
  for (i = 0; i < N; i++) {
   sd = &vol->v_subdisks[no];
   switch (sd->sd_state) {
   case 131:
   case 128:
   case 129:
    break;
   case 130:
    if (offset + start >= sd->sd_rebuild_pos)
     goto nextdisk;
    break;
   default:
    goto nextdisk;
   }
   error = g_raid_subdisk_kerneldump(sd,
       addr, 0, offset + start, length);
   if (error != 0)
    return (error);
nextdisk:
   if (++no >= vol->v_disks_count) {
    no = 0;
    offset += strip_size;
   }
  }
  remain -= length;
  addr += length;
  start = 0;
 }
 return (0);
}
