
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct unaligned_opaque_data {int first_mpa_offset; } ;
struct ecore_iwarp_ll2_buff {int * buff_size; int * data; int data_phys_addr; } ;
struct ecore_iwarp_fpdu {scalar_t__ mpa_frag_len; scalar_t__ incomplete_bytes; int * mpa_frag_virt; int mpa_frag; struct ecore_iwarp_ll2_buff* mpa_buf; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int * mpa_intermediate_buf; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_ERR (struct ecore_hwfn*,char*,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int OSAL_MEMCPY (int *,int *,scalar_t__) ;
 int ecore_iwarp_recycle_pkt (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,struct ecore_iwarp_ll2_buff*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_copy_fpdu(struct ecore_hwfn *p_hwfn,
        struct ecore_iwarp_fpdu *fpdu,
        struct unaligned_opaque_data *pkt_data,
        struct ecore_iwarp_ll2_buff *buf,
        u16 tcp_payload_size)

{
 u8 *tmp_buf = p_hwfn->p_rdma_info->iwarp.mpa_intermediate_buf;
 enum _ecore_status_t rc;







 if ((fpdu->mpa_frag_len + tcp_payload_size) > (u16)buf->buff_size) {
  DP_ERR(p_hwfn,
         "MPA ALIGN: Unexpected: buffer is not large enough for split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\n",
         buf->buff_size, fpdu->mpa_frag_len, tcp_payload_size,
         fpdu->incomplete_bytes);
  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
     "MPA ALIGN Copying fpdu: [%p, %d] [%p, %d]\n",
     fpdu->mpa_frag_virt, fpdu->mpa_frag_len,
     (u8 *)(buf->data) + pkt_data->first_mpa_offset,
     tcp_payload_size);

 OSAL_MEMCPY(tmp_buf, fpdu->mpa_frag_virt, fpdu->mpa_frag_len);
 OSAL_MEMCPY(tmp_buf + fpdu->mpa_frag_len,
      (u8 *)(buf->data) + pkt_data->first_mpa_offset,
      tcp_payload_size);

 rc = ecore_iwarp_recycle_pkt(p_hwfn, fpdu, fpdu->mpa_buf);
 if (rc)
  return rc;




 OSAL_MEMCPY((u8 *)(buf->data), tmp_buf,
      fpdu->mpa_frag_len + tcp_payload_size);

 fpdu->mpa_buf = buf;


 fpdu->mpa_frag = buf->data_phys_addr;
 fpdu->mpa_frag_virt = buf->data;
 fpdu->mpa_frag_len += tcp_payload_size;

 fpdu->incomplete_bytes -= tcp_payload_size;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
     "MPA ALIGN: split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\n",
     buf->buff_size, fpdu->mpa_frag_len, tcp_payload_size,
     fpdu->incomplete_bytes);

 return 0;
}
