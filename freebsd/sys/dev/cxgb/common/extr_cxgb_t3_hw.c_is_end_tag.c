
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int adapter_t ;


 int cpu_to_le32 (int) ;
 int t3_seeprom_read (int *,int,int*) ;

__attribute__((used)) static int is_end_tag(adapter_t * adapter, u32 offset)
{
 u32 read_offset, shift, ret, tmp;
 u8 buf[4];

 read_offset = offset & 0xfffffffc;
 shift = offset & 0x03;

 ret = t3_seeprom_read(adapter, read_offset, &tmp);
 if (ret)
  return ret;
 *((u32 *)buf) = cpu_to_le32(tmp);

 if (buf[shift] == 0x78)
  return 1;
 else
  return 0;
}
