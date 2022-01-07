
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct ccb_calc_geometry {long block_size; int volume_size; int heads; int secs_per_track; int cylinders; } ;



int
scsi_da_bios_params(struct ccb_calc_geometry *ccg)
{
 uint32_t secs_per_cylinder, size_mb;
 if (ccg->block_size == 0)
  return (0);
 size_mb = (1024L * 1024L) / ccg->block_size;
 if (size_mb == 0)
  return (0);
 size_mb = ccg->volume_size / size_mb;
 if (ccg->volume_size > (uint64_t)65535 * 255 * 63) {
  ccg->heads = 255;
  ccg->secs_per_track = 255;
 } else if (size_mb > 1024) {
  ccg->heads = 255;
  ccg->secs_per_track = 63;
 } else {
  ccg->heads = 64;
  ccg->secs_per_track = 32;
 }
 secs_per_cylinder = ccg->heads * ccg->secs_per_track;
 if (secs_per_cylinder == 0)
  return (0);
 ccg->cylinders = ccg->volume_size / secs_per_cylinder;
 return (1);
}
