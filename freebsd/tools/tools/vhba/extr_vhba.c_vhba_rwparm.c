
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int32_t ;
int
vhba_rwparm(uint8_t *cdb, uint64_t *offset, uint32_t *tl, uint64_t nblks, uint32_t blk_shift)
{
 uint32_t cnt;
 uint64_t lba;

 switch (cdb[0]) {
 case 129:
 case 133:
  cnt = (((uint32_t)cdb[10]) << 24) |
   (((uint32_t)cdb[11]) << 16) |
   (((uint32_t)cdb[12]) << 8) |
   ((uint32_t)cdb[13]);

  lba = (((uint64_t)cdb[2]) << 56) |
   (((uint64_t)cdb[3]) << 48) |
   (((uint64_t)cdb[4]) << 40) |
   (((uint64_t)cdb[5]) << 32) |
   (((uint64_t)cdb[6]) << 24) |
   (((uint64_t)cdb[7]) << 16) |
   (((uint64_t)cdb[8]) << 8) |
   ((uint64_t)cdb[9]);
  break;
 case 130:
 case 134:
  cnt = (((uint32_t)cdb[6]) << 16) |
   (((uint32_t)cdb[7]) << 8) |
   ((u_int32_t)cdb[8]);

  lba = (((uint32_t)cdb[2]) << 24) |
   (((uint32_t)cdb[3]) << 16) |
   (((uint32_t)cdb[4]) << 8) |
   ((uint32_t)cdb[5]);
  break;
 case 131:
 case 135:
  cnt = (((uint32_t)cdb[7]) << 8) |
   ((u_int32_t)cdb[8]);

  lba = (((uint32_t)cdb[2]) << 24) |
   (((uint32_t)cdb[3]) << 16) |
   (((uint32_t)cdb[4]) << 8) |
   ((uint32_t)cdb[5]);
  break;
 case 128:
 case 132:
  cnt = cdb[4];
  if (cnt == 0) {
   cnt = 256;
  }
  lba = (((uint32_t)cdb[1] & 0x1f) << 16) |
   (((uint32_t)cdb[2]) << 8) |
   ((uint32_t)cdb[3]);
  break;
 default:
  return (-1);
 }

 if (lba + cnt > nblks) {
  return (-1);
 }
 *tl = cnt << blk_shift;
 *offset = lba << blk_shift;
 return (0);
}
