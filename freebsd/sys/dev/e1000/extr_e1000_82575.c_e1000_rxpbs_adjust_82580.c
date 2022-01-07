
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;


 size_t E1000_82580_RXPBS_TABLE_SIZE ;
 int * e1000_82580_rxpbs_table ;

u16 e1000_rxpbs_adjust_82580(u32 data)
{
 u16 ret_val = 0;

 if (data < E1000_82580_RXPBS_TABLE_SIZE)
  ret_val = e1000_82580_rxpbs_table[data];

 return ret_val;
}
