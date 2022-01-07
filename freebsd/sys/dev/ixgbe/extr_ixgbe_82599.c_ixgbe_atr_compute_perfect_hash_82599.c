
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bkt_hash; } ;
union ixgbe_atr_input {int* dword_stream; TYPE_1__ formatted; } ;
typedef int u32 ;


 int IXGBE_COMPUTE_BKT_HASH_ITERATION (int) ;
 int IXGBE_NTOHL (int) ;

void ixgbe_atr_compute_perfect_hash_82599(union ixgbe_atr_input *input,
       union ixgbe_atr_input *input_mask)
{

 u32 hi_hash_dword, lo_hash_dword, flow_vm_vlan;
 u32 bucket_hash = 0;
 u32 hi_dword = 0;
 u32 i = 0;


 for (i = 0; i < 14; i++)
  input->dword_stream[i] &= input_mask->dword_stream[i];


 flow_vm_vlan = IXGBE_NTOHL(input->dword_stream[0]);


 for (i = 1; i <= 13; i++)
  hi_dword ^= input->dword_stream[i];
 hi_hash_dword = IXGBE_NTOHL(hi_dword);


 lo_hash_dword = (hi_hash_dword >> 16) | (hi_hash_dword << 16);


 hi_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan >> 16);


 IXGBE_COMPUTE_BKT_HASH_ITERATION(0);






 lo_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan << 16);


 for (i = 1; i <= 15; i++)
  IXGBE_COMPUTE_BKT_HASH_ITERATION(i);





 input->formatted.bkt_hash = bucket_hash & 0x1FFF;
}
