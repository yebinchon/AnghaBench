
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cis_info {int man_id; int prod_id; int max_block_size; } ;
struct cam_device {int dummy; } ;


 int SD_IO_CISTPL_END ;




 int memset (char*,int ,int) ;
 int printf (char*,...) ;
 int sdio_read_1 (struct cam_device*,int ,int,int*) ;
 int warn (char*,int) ;
 int warnx (char*,int,int) ;

int
sdio_func_read_cis(struct cam_device *dev, uint8_t func_number,
     uint32_t cis_addr, struct cis_info *info) {
 uint8_t tuple_id, tuple_len, tuple_count;
 uint32_t addr;

 char *cis1_info[4];
 int start, i, ch, count, ret;
 char cis1_info_buf[256];

 tuple_count = 0;
 memset(cis1_info_buf, 0, 256);
 do {
  addr = cis_addr;
  tuple_id = sdio_read_1(dev, 0, addr++, &ret);
  if (tuple_id == SD_IO_CISTPL_END)
   break;
  if (tuple_id == 0) {
   cis_addr++;
   continue;
  }
  tuple_len = sdio_read_1(dev, 0, addr++, &ret);
  if (tuple_len == 0 && tuple_id != 0x00) {
   warn("Parse error: 0-length tuple %02X\n", tuple_id);
   return -1;
  }

  switch (tuple_id) {
  case 128:
   addr += 2;
   for (count = 0, start = 0, i = 0;
        (count < 4) && ((i + 4) < 256); i++) {
    ch = sdio_read_1(dev, 0, addr + i, &ret);
    printf("count=%d, start=%d, i=%d, Got %c (0x%02x)\n", count, start, i, ch, ch);
    if (ch == 0xff)
     break;
    cis1_info_buf[i] = ch;
    if (ch == 0) {
     cis1_info[count] =
      cis1_info_buf + start;
     start = i + 1;
     count++;
    }
   }
   printf("Card info:");
   for (i=0; i<4; i++)
    if (cis1_info[i])
     printf(" %s", cis1_info[i]);
   printf("\n");
   break;
  case 129:
   info->man_id = sdio_read_1(dev, 0, addr++, &ret);
   info->man_id |= sdio_read_1(dev, 0, addr++, &ret) << 8;

   info->prod_id = sdio_read_1(dev, 0, addr++, &ret);
   info->prod_id |= sdio_read_1(dev, 0, addr++, &ret) << 8;
   break;
  case 130:

   break;
  case 131:
   if (tuple_len < 4) {
    printf("FUNCE is too short: %d\n", tuple_len);
    break;
   }
   if (func_number == 0) {

    addr++;
    info->max_block_size = sdio_read_1(dev, 0, addr++, &ret);
    info->max_block_size |= sdio_read_1(dev, 0, addr++, &ret) << 8;
   } else {
    info->max_block_size = sdio_read_1(dev, 0, addr + 0xC, &ret);
    info->max_block_size |= sdio_read_1(dev, 0, addr + 0xD, &ret) << 8;
   }
   break;
  default:
   warnx("Skipping tuple ID %02X len %02X\n", tuple_id, tuple_len);
  }
  cis_addr += tuple_len + 2;
  tuple_count++;
 } while (tuple_count < 20);

 return 0;
}
