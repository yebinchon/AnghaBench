
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vfpf_tlvs {int dummy; } vfpf_tlvs ;
typedef int u32 ;
struct vfpf_first_tlv {int dummy; } ;



bool ecore_iov_is_valid_vfpf_msg_length(u32 length)
{
 return (length >= sizeof(struct vfpf_first_tlv) &&
  (length <= sizeof(union vfpf_tlvs)));
}
