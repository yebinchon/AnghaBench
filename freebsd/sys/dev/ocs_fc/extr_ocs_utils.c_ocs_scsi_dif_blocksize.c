
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int blk_size; } ;
typedef TYPE_1__ ocs_scsi_dif_info_t ;
uint32_t
ocs_scsi_dif_blocksize(ocs_scsi_dif_info_t *dif_info)
{
 uint32_t blocksize = 0;

 switch(dif_info->blk_size) {
 case 129: blocksize = 512; break;
 case 133: blocksize = 1024; break;
 case 132: blocksize = 2048; break;
 case 131: blocksize = 4096; break;
 case 128: blocksize = 520; break;
 case 130: blocksize = 4104; break;
 default:
  break;
 }

 return blocksize;
}
