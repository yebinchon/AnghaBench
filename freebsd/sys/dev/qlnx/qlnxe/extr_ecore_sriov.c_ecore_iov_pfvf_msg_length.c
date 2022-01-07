
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef int u32 ;



u32 ecore_iov_pfvf_msg_length(void)
{
 return sizeof(union pfvf_tlvs);
}
