
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_raid_conf {scalar_t__ type; int array_width; } ;


 scalar_t__ NVIDIA_T_RAID01 ;

__attribute__((used)) static int
nvidia_meta_translate_disk(struct nvidia_raid_conf *meta, int md_disk_pos)
{
 int disk_pos;

 if (md_disk_pos >= 0 && meta->type == NVIDIA_T_RAID01) {
  disk_pos = (md_disk_pos / meta->array_width) +
      (md_disk_pos % meta->array_width) * meta->array_width;
 } else
  disk_pos = md_disk_pos;
 return (disk_pos);
}
