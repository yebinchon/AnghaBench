
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct card_info {int num_funcs; TYPE_1__* f; } ;
struct cam_device {int dummy; } ;
struct TYPE_2__ {int man_id; int prod_id; int max_block_size; } ;


 int SD_IO_FBR_START ;
 int bailout (int) ;
 int memset (struct card_info*,int ,int) ;
 int printf (char*,int,...) ;
 int sdio_func_read_cis (struct cam_device*,int,int,TYPE_1__*) ;
 int sdio_get_common_cis_addr (struct cam_device*) ;
 int sdio_read_1 (struct cam_device*,int ,int ,int*) ;

__attribute__((used)) static void
get_sdio_card_info(struct cam_device *dev, struct card_info *ci) {
 uint32_t cis_addr;
 uint32_t fbr_addr;
 int ret;

 cis_addr = sdio_get_common_cis_addr(dev);

 memset(ci, 0, sizeof(struct card_info));
 sdio_func_read_cis(dev, 0, cis_addr, &ci->f[0]);
 printf("F0: Vendor 0x%04X product 0x%04X max block size %d bytes\n",
        ci->f[0].man_id, ci->f[0].prod_id, ci->f[0].max_block_size);
 for (int i = 1; i <= 7; i++) {
  fbr_addr = SD_IO_FBR_START * i + 0x9;
  cis_addr = sdio_read_1(dev, 0, fbr_addr++, &ret);bailout(ret);
  cis_addr |= sdio_read_1(dev, 0, fbr_addr++, &ret) << 8;
  cis_addr |= sdio_read_1(dev, 0, fbr_addr++, &ret) << 16;
  sdio_func_read_cis(dev, i, cis_addr, &ci->f[i]);
  printf("F%d: Vendor 0x%04X product 0x%04X max block size %d bytes\n",
         i, ci->f[i].man_id, ci->f[i].prod_id, ci->f[i].max_block_size);
  if (ci->f[i].man_id == 0) {
   printf("F%d doesn't exist\n", i);
   break;
  }
  ci->num_funcs++;
 }
}
