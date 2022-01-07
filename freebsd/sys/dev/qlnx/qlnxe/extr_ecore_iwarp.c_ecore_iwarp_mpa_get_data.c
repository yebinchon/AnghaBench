
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct unaligned_opaque_data {int cid; int flags; scalar_t__ tcp_payload_offset; scalar_t__ first_mpa_offset; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int ECORE_MSG_RDMA ;
 int HILO_64 (int ,int ) ;
 scalar_t__ OSAL_LE16_TO_CPU (scalar_t__) ;
 int OSAL_LE32_TO_CPU (int ) ;

__attribute__((used)) static void
ecore_iwarp_mpa_get_data(struct ecore_hwfn *p_hwfn,
    struct unaligned_opaque_data *curr_pkt,
    u32 opaque_data0, u32 opaque_data1)
{
 u64 opaque_data;

 opaque_data = HILO_64(opaque_data1, opaque_data0);
 *curr_pkt = *((struct unaligned_opaque_data *)&opaque_data);


 curr_pkt->first_mpa_offset = curr_pkt->tcp_payload_offset +
  OSAL_LE16_TO_CPU(curr_pkt->first_mpa_offset);
 curr_pkt->cid = OSAL_LE32_TO_CPU(curr_pkt->cid);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
     "OPAQUE0=0x%x OPAQUE1=0x%x first_mpa_offset:0x%x\ttcp_payload_offset:0x%x\tflags:0x%x\tcid:0x%x\n",
     opaque_data0, opaque_data1, curr_pkt->first_mpa_offset,
     curr_pkt->tcp_payload_offset, curr_pkt->flags,
     curr_pkt->cid);
}
