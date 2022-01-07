
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct g_raid_volume {int v_tr; int v_softc; } ;
typedef scalar_t__ off_t ;


 int G_RAID_DEBUG1 (int,int ,char*,unsigned long long,unsigned long long) ;
 int G_RAID_TR_KERNELDUMP (int ,void*,int ,scalar_t__,size_t) ;

__attribute__((used)) static int
g_raid_dump(void *arg,
    void *virtual, vm_offset_t physical, off_t offset, size_t length)
{
 struct g_raid_volume *vol;
 int error;

 vol = (struct g_raid_volume *)arg;
 G_RAID_DEBUG1(3, vol->v_softc, "Dumping at off %llu len %llu.",
     (long long unsigned)offset, (long long unsigned)length);

 error = G_RAID_TR_KERNELDUMP(vol->v_tr,
     virtual, physical, offset, length);
 return (error);
}
