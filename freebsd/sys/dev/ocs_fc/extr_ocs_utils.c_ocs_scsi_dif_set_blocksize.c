
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int blk_size; } ;
typedef TYPE_1__ ocs_scsi_dif_info_t ;
typedef int int32_t ;


 int OCS_SCSI_DIF_BK_SIZE_1024 ;
 int OCS_SCSI_DIF_BK_SIZE_2048 ;
 int OCS_SCSI_DIF_BK_SIZE_4096 ;
 int OCS_SCSI_DIF_BK_SIZE_4104 ;
 int OCS_SCSI_DIF_BK_SIZE_512 ;
 int OCS_SCSI_DIF_BK_SIZE_520 ;

int32_t
ocs_scsi_dif_set_blocksize(ocs_scsi_dif_info_t *dif_info, uint32_t blocksize)
{
 int32_t rc = 0;

 switch(blocksize) {
 case 512: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_512; break;
 case 1024: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_1024; break;
 case 2048: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_2048; break;
 case 4096: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_4096; break;
 case 520: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_520; break;
 case 4104: dif_info->blk_size = OCS_SCSI_DIF_BK_SIZE_4104; break;
 default:
  rc = -1;
  break;
 }
 return rc;

}
