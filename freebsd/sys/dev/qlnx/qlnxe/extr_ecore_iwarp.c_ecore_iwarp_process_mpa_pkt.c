
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct unaligned_opaque_data {int cid; int first_mpa_offset; } ;
struct ecore_iwarp_ll2_mpa_buf {int placement_offset; int tcp_payload_len; struct unaligned_opaque_data data; struct ecore_iwarp_ll2_buff* ll2_buf; } ;
struct ecore_iwarp_ll2_buff {scalar_t__ data; } ;
struct ecore_iwarp_fpdu {int fpdu_length; int incomplete_bytes; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum ecore_iwarp_mpa_pkt_type { ____Placeholder_ecore_iwarp_mpa_pkt_type } ecore_iwarp_mpa_pkt_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_ERR (struct ecore_hwfn*,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_IWARP_IS_RIGHT_EDGE (struct unaligned_opaque_data*) ;



 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 int OSAL_MEM_ZERO (struct ecore_iwarp_fpdu*,int) ;
 int ecore_iwarp_copy_fpdu (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,struct ecore_iwarp_ll2_buff*,int) ;
 struct ecore_iwarp_fpdu* ecore_iwarp_get_curr_fpdu (struct ecore_hwfn*,int) ;
 int ecore_iwarp_init_fpdu (struct ecore_iwarp_ll2_buff*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,int,int) ;
 int ecore_iwarp_ll2_post_rx (struct ecore_hwfn*,struct ecore_iwarp_ll2_buff*,int ) ;
 int ecore_iwarp_mpa_classify (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,int,int *) ;
 int ecore_iwarp_mpa_print_tcp_seq (struct ecore_hwfn*,int *) ;
 int ecore_iwarp_send_fpdu (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,struct ecore_iwarp_ll2_buff*,int,int) ;
 int ecore_iwarp_update_fpdu_length (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,int *) ;
 int ecore_iwarp_win_right_edge (struct ecore_hwfn*,struct ecore_iwarp_fpdu*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_process_mpa_pkt(struct ecore_hwfn *p_hwfn,
       struct ecore_iwarp_ll2_mpa_buf *mpa_buf)
{
 struct ecore_iwarp_ll2_buff *buf = mpa_buf->ll2_buf;
 enum ecore_iwarp_mpa_pkt_type pkt_type;
 struct unaligned_opaque_data *curr_pkt = &mpa_buf->data;
 struct ecore_iwarp_fpdu *fpdu;
 u8 *mpa_data;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 ecore_iwarp_mpa_print_tcp_seq(
  p_hwfn, (u8 *)(buf->data) + mpa_buf->placement_offset);

 fpdu = ecore_iwarp_get_curr_fpdu(p_hwfn, curr_pkt->cid & 0xffff);
 if (!fpdu) {
  DP_ERR(p_hwfn, "Invalid cid, drop and post back to rx cid=%x\n",
         curr_pkt->cid);
  rc = ecore_iwarp_ll2_post_rx(
   p_hwfn, buf, p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle);

  if (rc) {
   DP_ERR(p_hwfn, "Post rx buffer failed\n");




   rc = ECORE_UNKNOWN_ERROR;
  }
  return rc;
 }

 do {
  mpa_data = ((u8 *)(buf->data) + curr_pkt->first_mpa_offset);

  pkt_type = ecore_iwarp_mpa_classify(p_hwfn, fpdu,
          mpa_buf->tcp_payload_len,
          mpa_data);

  switch (pkt_type) {
  case 129:
   ecore_iwarp_init_fpdu(buf, fpdu,
           curr_pkt,
           mpa_buf->tcp_payload_len,
           mpa_buf->placement_offset);

   if (!ECORE_IWARP_IS_RIGHT_EDGE(curr_pkt)) {
    mpa_buf->tcp_payload_len = 0;
    break;
   }

   rc = ecore_iwarp_win_right_edge(p_hwfn, fpdu);

   if (rc) {
    DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
        "Can't send FPDU:reset rc=%d\n", rc);
    OSAL_MEM_ZERO(fpdu, sizeof(*fpdu));
    break;
   }

   mpa_buf->tcp_payload_len = 0;
   break;
  case 130:
   if (fpdu->fpdu_length == 8) {
    DP_ERR(p_hwfn, "SUSPICIOUS fpdu_length = 0x%x: assuming bug...aborting this packet...\n",
           fpdu->fpdu_length);
    mpa_buf->tcp_payload_len = 0;
    break;
   }

   ecore_iwarp_init_fpdu(buf, fpdu,
           curr_pkt,
           mpa_buf->tcp_payload_len,
           mpa_buf->placement_offset);

   rc = ecore_iwarp_send_fpdu(p_hwfn, fpdu, curr_pkt, buf,
         mpa_buf->tcp_payload_len,
         pkt_type);
   if (rc) {
    DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
        "Can't send FPDU:reset rc=%d\n", rc);
    OSAL_MEM_ZERO(fpdu, sizeof(*fpdu));
    break;
   }
   mpa_buf->tcp_payload_len -= fpdu->fpdu_length;
   curr_pkt->first_mpa_offset += fpdu->fpdu_length;
   break;
  case 128:
   ecore_iwarp_update_fpdu_length(p_hwfn, fpdu, mpa_data);
   if (mpa_buf->tcp_payload_len < fpdu->incomplete_bytes) {



    if (ECORE_IWARP_IS_RIGHT_EDGE(curr_pkt)) {
     rc = ecore_iwarp_win_right_edge(p_hwfn,
         fpdu);

     if (rc)
      return rc;
    }

    rc = ecore_iwarp_copy_fpdu(
     p_hwfn, fpdu, curr_pkt,
     buf, mpa_buf->tcp_payload_len);


    if (rc)
     return rc;

    mpa_buf->tcp_payload_len = 0;

    break;
   }

   rc = ecore_iwarp_send_fpdu(p_hwfn, fpdu, curr_pkt, buf,
         mpa_buf->tcp_payload_len,
         pkt_type);
   if (rc) {
    DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
        "Can't send FPDU:delay rc=%d\n", rc);



    break;
   }
   mpa_buf->tcp_payload_len -= fpdu->incomplete_bytes;
   curr_pkt->first_mpa_offset += fpdu->incomplete_bytes;

   fpdu->incomplete_bytes = 0;
   break;
  }

 } while (mpa_buf->tcp_payload_len && !rc);

 return rc;
}
