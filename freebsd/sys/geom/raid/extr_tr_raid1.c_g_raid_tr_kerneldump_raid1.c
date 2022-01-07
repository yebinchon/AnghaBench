
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct g_raid_volume {int v_disks_count; struct g_raid_subdisk* v_subdisks; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {int sd_state; int sd_rebuild_pos; } ;
typedef int off_t ;






 int g_raid_subdisk_kerneldump (struct g_raid_subdisk*,void*,int ,int ,size_t) ;

__attribute__((used)) static int
g_raid_tr_kerneldump_raid1(struct g_raid_tr_object *tr,
    void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
 struct g_raid_volume *vol;
 struct g_raid_subdisk *sd;
 int error, i, ok;

 vol = tr->tro_volume;
 error = 0;
 ok = 0;
 for (i = 0; i < vol->v_disks_count; i++) {
  sd = &vol->v_subdisks[i];
  switch (sd->sd_state) {
  case 131:
   break;
  case 130:





   if (offset >= sd->sd_rebuild_pos)
    continue;
   break;
  case 128:
  case 129:






   break;
  default:
   continue;
  }
  error = g_raid_subdisk_kerneldump(sd,
      virtual, physical, offset, length);
  if (error == 0)
   ok++;
 }
 return (ok > 0 ? 0 : error);
}
