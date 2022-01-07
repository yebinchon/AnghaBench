
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int A_TP_VLAN_PRI_MAP ;
 int EINVAL ;
 int FILTER_OPT_LEN ;
 int S_FCOE ;
 int S_FRAGMENTATION ;
 int read_filter_mode_and_ingress_config (struct adapter*,int) ;
 int t4_tp_pio_write (struct adapter*,unsigned int*,int,int ,int) ;

int t4_set_filter_mode(struct adapter *adap, unsigned int mode_map,
         bool sleep_ok)
{
 static u8 width[] = { 1, 3, 17, 17, 8, 8, 16, 9, 3, 1 };

 int i, nbits = 0;

 for (i = S_FCOE; i <= S_FRAGMENTATION; i++)
  if (mode_map & (1 << i))
   nbits += width[i];
 if (nbits > FILTER_OPT_LEN)
  return -EINVAL;
 t4_tp_pio_write(adap, &mode_map, 1, A_TP_VLAN_PRI_MAP, sleep_ok);
 read_filter_mode_and_ingress_config(adap, sleep_ok);

 return 0;
}
