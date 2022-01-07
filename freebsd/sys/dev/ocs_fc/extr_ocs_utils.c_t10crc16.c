
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* crctable ;

unsigned short
t10crc16(const unsigned char *blk_adr, unsigned long blk_len, unsigned short crc)
{
 if (blk_len > 0) {
  while (blk_len--) {
   crc = crctable[((crc>>8) ^ *blk_adr++) & 0xFFL] ^ (crc << 8);
  }
 }
 return crc;
}
