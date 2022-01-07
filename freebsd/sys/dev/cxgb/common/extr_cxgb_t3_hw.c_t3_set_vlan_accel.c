
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_TP_OUT_CONFIG ;
 unsigned int S_VLANEXTRACTIONENABLE ;
 int t3_set_reg_field (int *,int ,unsigned int,unsigned int) ;

void t3_set_vlan_accel(adapter_t *adapter, unsigned int ports, int on)
{
 t3_set_reg_field(adapter, A_TP_OUT_CONFIG,
    ports << S_VLANEXTRACTIONENABLE,
    on ? (ports << S_VLANEXTRACTIONENABLE) : 0);
}
