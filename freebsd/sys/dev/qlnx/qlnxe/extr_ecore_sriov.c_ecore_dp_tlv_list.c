
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tlv_buffer_size {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct channel_tlv {size_t type; scalar_t__ length; } ;


 size_t CHANNEL_TLV_LIST_END ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,size_t,scalar_t__) ;
 int ECORE_MSG_IOV ;
 size_t* ecore_channel_tlvs_string ;
 scalar_t__ ecore_iov_tlv_supported (size_t) ;

void ecore_dp_tlv_list(struct ecore_hwfn *p_hwfn, void *tlvs_list)
{
 u16 i = 1, total_length = 0;
 struct channel_tlv *tlv;

 do {

  tlv = (struct channel_tlv *)((u8 *)tlvs_list + total_length);


  if (ecore_iov_tlv_supported(tlv->type))
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "TLV number %d: type %s, length %d\n",
       i, ecore_channel_tlvs_string[tlv->type],
       tlv->length);
  else
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "TLV number %d: type %d, length %d\n",
       i, tlv->type, tlv->length);

  if (tlv->type == CHANNEL_TLV_LIST_END)
   return;


  if (!tlv->length) {
   DP_NOTICE(p_hwfn, 0, "TLV of length 0 found\n");
   return;
  }

  total_length += tlv->length;

  if (total_length >= sizeof(struct tlv_buffer_size)) {
   DP_NOTICE(p_hwfn, 0, "TLV ==> Buffer overflow\n");
   return;
  }

  i++;
 } while (1);
}
