
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {size_t dif_oper; } ;
typedef TYPE_1__ ocs_scsi_dif_info_t ;
typedef int int32_t ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ DIF_SIZE ;
 int ocs_assert (int,int ) ;
 scalar_t__ ocs_scsi_dif_blocksize (TYPE_1__*) ;

int32_t
ocs_scsi_dif_mem_blocksize(ocs_scsi_dif_info_t *dif_info, int wiretomem)
{
 uint32_t blocksize;
 uint8_t wiretomem_adj[] = {
  0,
  DIF_SIZE,
  0,
  DIF_SIZE,
  0,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE};
 uint8_t memtowire_adj[] = {
  0,
  0,
  DIF_SIZE,
  0,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE,
  DIF_SIZE};

 blocksize = ocs_scsi_dif_blocksize(dif_info);
 if (blocksize == 0) {
  return -1;
 }

 if (wiretomem) {
  ocs_assert(dif_info->dif_oper < ARRAY_SIZE(wiretomem_adj), 0);
  blocksize += wiretomem_adj[dif_info->dif_oper];
 } else {
  ocs_assert(dif_info->dif_oper < ARRAY_SIZE(memtowire_adj), 0);
  blocksize += memtowire_adj[dif_info->dif_oper];
 }
 return blocksize;
}
