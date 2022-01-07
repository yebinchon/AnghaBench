
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int adapter_t ;


 int cpu_to_le32 (int) ;
 int t3_seeprom_read (int *,int,int*) ;

__attribute__((used)) static int get_desc_len(adapter_t *adapter, u32 offset)
{
 u32 read_offset, tmp, shift, len = 0;
 u8 tag, buf[8];
 int ret;

 read_offset = offset & 0xfffffffc;
 shift = offset & 0x03;

 ret = t3_seeprom_read(adapter, read_offset, &tmp);
 if (ret < 0)
  return ret;

 *((u32 *)buf) = cpu_to_le32(tmp);

 tag = buf[shift];
 if (tag & 0x80) {
  ret = t3_seeprom_read(adapter, read_offset + 4, &tmp);
  if (ret < 0)
   return ret;

  *((u32 *)(&buf[4])) = cpu_to_le32(tmp);
  len = (buf[shift + 1] & 0xff) +
        ((buf[shift+2] << 8) & 0xff00) + 3;
 } else
  len = (tag & 0x07) + 1;

 return len;
}
