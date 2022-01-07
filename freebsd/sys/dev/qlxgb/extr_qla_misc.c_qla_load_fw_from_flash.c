
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int qla_host_t ;
struct TYPE_3__ {int data_uhi; int data_ulo; int data_hi; int data_lo; } ;
typedef TYPE_1__ offchip_mem_val_t ;


 int qla_rd_flash32 (int *,int,int *) ;
 int qla_rdwr_offchip_mem (int *,int,TYPE_1__*,int ) ;

__attribute__((used)) static void
qla_load_fw_from_flash(qla_host_t *ha)
{
 uint64_t mem_off = 0x10000;
 uint32_t flash_off = 0x10000;
 uint32_t count;
 offchip_mem_val_t val;



 for (count = 0; count < 0x20000 ; ) {
  qla_rd_flash32(ha, flash_off, &val.data_lo);
  count = count + 4;
  flash_off = flash_off + 4;

  qla_rd_flash32(ha, flash_off, &val.data_hi);
  count = count + 4;
  flash_off = flash_off + 4;

  qla_rd_flash32(ha, flash_off, &val.data_ulo);
  count = count + 4;
  flash_off = flash_off + 4;

  qla_rd_flash32(ha, flash_off, &val.data_uhi);
  count = count + 4;
  flash_off = flash_off + 4;

  qla_rdwr_offchip_mem(ha, mem_off, &val, 0);

  mem_off = mem_off + 16;
 }
 return;
}
