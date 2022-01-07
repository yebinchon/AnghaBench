
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum smi_forward_action { ____Placeholder_smi_forward_action } smi_forward_action ;


 int IB_SMI_FORWARD ;
 int IB_SMI_LOCAL ;
 int IB_SMI_SEND ;

__attribute__((used)) static enum smi_forward_action __smi_check_forward_dr_smp(u8 hop_ptr, u8 hop_cnt,
         u8 direction,
         bool dr_dlid_is_permissive,
         bool dr_slid_is_permissive)
{
 if (!direction) {

  if (hop_ptr && hop_ptr < hop_cnt)
   return IB_SMI_FORWARD;


  if (hop_ptr == hop_cnt)
   return (dr_dlid_is_permissive ?
    IB_SMI_SEND : IB_SMI_LOCAL);


  if (hop_ptr == hop_cnt + 1)
   return IB_SMI_SEND;
 } else {

  if (2 <= hop_ptr && hop_ptr <= hop_cnt)
   return IB_SMI_FORWARD;


  if (hop_ptr == 1)
   return (!dr_slid_is_permissive ?
    IB_SMI_SEND : IB_SMI_LOCAL);
 }
 return IB_SMI_LOCAL;

}
