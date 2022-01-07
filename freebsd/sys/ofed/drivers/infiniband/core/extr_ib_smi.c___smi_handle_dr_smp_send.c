
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 int IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 size_t IB_SMP_MAX_PATH_HOPS ;

__attribute__((used)) static enum smi_action __smi_handle_dr_smp_send(bool is_switch, int port_num,
      u8 *hop_ptr, u8 hop_cnt,
      const u8 *initial_path,
      const u8 *return_path,
      u8 direction,
      bool dr_dlid_is_permissive,
      bool dr_slid_is_permissive)
{


 if (hop_cnt >= IB_SMP_MAX_PATH_HOPS)
  return IB_SMI_DISCARD;

 if (!direction) {

  if (hop_cnt && *hop_ptr == 0) {
   (*hop_ptr)++;
   return (initial_path[*hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr && *hop_ptr < hop_cnt) {
   if (!is_switch)
    return IB_SMI_DISCARD;


   (*hop_ptr)++;
   return (initial_path[*hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr == hop_cnt) {

   (*hop_ptr)++;
   return (is_switch ||
    dr_dlid_is_permissive ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }



  return (*hop_ptr == hop_cnt + 1 ? IB_SMI_HANDLE : IB_SMI_DISCARD);

 } else {

  if (hop_cnt && *hop_ptr == hop_cnt + 1) {
   (*hop_ptr)--;
   return (return_path[*hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (2 <= *hop_ptr && *hop_ptr <= hop_cnt) {
   if (!is_switch)
    return IB_SMI_DISCARD;

   (*hop_ptr)--;
   return (return_path[*hop_ptr] ==
    port_num ? IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr == 1) {
   (*hop_ptr)--;

   return (is_switch ||
    dr_slid_is_permissive ?
    IB_SMI_HANDLE : IB_SMI_DISCARD);
  }


  if (*hop_ptr == 0)
   return IB_SMI_HANDLE;


  return IB_SMI_DISCARD;
 }
}
