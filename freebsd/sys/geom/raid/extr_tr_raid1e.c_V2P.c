
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_raid_volume {int v_strip_size; int v_disks_count; } ;
typedef int off_t ;


 int N ;

__attribute__((used)) static inline void
V2P(struct g_raid_volume *vol, off_t virt,
    int *disk, off_t *offset, off_t *start)
{
 off_t nstrip;
 u_int strip_size;

 strip_size = vol->v_strip_size;

 nstrip = virt / strip_size;

 *start = virt % strip_size;

 *disk = (nstrip * N) % vol->v_disks_count;

 *offset = ((nstrip * N) / vol->v_disks_count) * strip_size;
}
