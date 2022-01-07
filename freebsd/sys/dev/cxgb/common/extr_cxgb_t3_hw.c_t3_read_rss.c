
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef int adapter_t ;


 int A_TP_RSS_LKP_TABLE ;
 int A_TP_RSS_MAP_TABLE ;
 int EAGAIN ;
 int RSS_TABLE_SIZE ;
 int t3_read_reg (int *,int ) ;
 int t3_write_reg (int *,int ,int) ;

int t3_read_rss(adapter_t *adapter, u8 *lkup, u16 *map)
{
 int i;
 u32 val;

 if (lkup)
  for (i = 0; i < RSS_TABLE_SIZE; ++i) {
   t3_write_reg(adapter, A_TP_RSS_LKP_TABLE,
         0xffff0000 | i);
   val = t3_read_reg(adapter, A_TP_RSS_LKP_TABLE);
   if (!(val & 0x80000000))
    return -EAGAIN;
   *lkup++ = (u8)val;
   *lkup++ = (u8)(val >> 8);
  }

 if (map)
  for (i = 0; i < RSS_TABLE_SIZE; ++i) {
   t3_write_reg(adapter, A_TP_RSS_MAP_TABLE,
         0xffff0000 | i);
   val = t3_read_reg(adapter, A_TP_RSS_MAP_TABLE);
   if (!(val & 0x80000000))
    return -EAGAIN;
   *map++ = (u16)val;
  }
 return 0;
}
