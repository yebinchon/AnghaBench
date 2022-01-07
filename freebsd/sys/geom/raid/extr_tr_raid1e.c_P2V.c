
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {int v_strip_size; int v_disks_count; } ;
typedef int off_t ;


 int N ;

__attribute__((used)) static inline void
P2V(struct g_raid_volume *vol, int disk, off_t offset,
    off_t *virt, int *copy)
{
 off_t nstrip, start;
 u_int strip_size;

 strip_size = vol->v_strip_size;

 start = offset % strip_size;

 nstrip = (offset / strip_size) * vol->v_disks_count + disk;

 *copy = nstrip % N;

 *virt = (nstrip / N) * strip_size + start;
}
