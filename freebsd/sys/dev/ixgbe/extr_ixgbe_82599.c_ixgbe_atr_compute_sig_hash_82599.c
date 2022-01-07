
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ixgbe_atr_hash_dword {int dword; } ;
typedef int u32 ;


 int IXGBE_ATR_HASH_MASK ;
 int IXGBE_COMPUTE_SIG_HASH_ITERATION (int) ;
 int IXGBE_NTOHL (int ) ;

u32 ixgbe_atr_compute_sig_hash_82599(union ixgbe_atr_hash_dword input,
         union ixgbe_atr_hash_dword common)
{
 u32 hi_hash_dword, lo_hash_dword, flow_vm_vlan;
 u32 sig_hash = 0, bucket_hash = 0, common_hash = 0;


 flow_vm_vlan = IXGBE_NTOHL(input.dword);


 hi_hash_dword = IXGBE_NTOHL(common.dword);


 lo_hash_dword = (hi_hash_dword >> 16) | (hi_hash_dword << 16);


 hi_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan >> 16);


 IXGBE_COMPUTE_SIG_HASH_ITERATION(0);






 lo_hash_dword ^= flow_vm_vlan ^ (flow_vm_vlan << 16);


 IXGBE_COMPUTE_SIG_HASH_ITERATION(1);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(2);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(3);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(4);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(5);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(6);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(7);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(8);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(9);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(10);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(11);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(12);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(13);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(14);
 IXGBE_COMPUTE_SIG_HASH_ITERATION(15);


 bucket_hash ^= common_hash;
 bucket_hash &= IXGBE_ATR_HASH_MASK;

 sig_hash ^= common_hash << 16;
 sig_hash &= IXGBE_ATR_HASH_MASK << 16;


 return sig_hash ^ bucket_hash;
}
