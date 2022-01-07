
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct icl_pdu {TYPE_1__* ip_bhs_mbuf; int * ip_ahs_mbuf; TYPE_2__* ip_conn; } ;
typedef int received_digest ;
struct TYPE_4__ {int ic_header_crc32c; } ;
struct TYPE_3__ {int * m_next; } ;


 int CTASSERT (int) ;
 int ICL_DEBUG (char*) ;
 int ICL_WARN (char*,scalar_t__,scalar_t__) ;
 int ISCSI_HEADER_DIGEST_SIZE ;
 scalar_t__ icl_conn_receive_buf (TYPE_2__*,scalar_t__*,int) ;
 scalar_t__ icl_mbuf_to_crc32c (TYPE_1__*) ;

__attribute__((used)) static int
icl_pdu_check_header_digest(struct icl_pdu *request, size_t *availablep)
{
 uint32_t received_digest, valid_digest;

 if (request->ip_conn->ic_header_crc32c == 0)
  return (0);

 CTASSERT(sizeof(received_digest) == ISCSI_HEADER_DIGEST_SIZE);
 if (icl_conn_receive_buf(request->ip_conn,
     &received_digest, ISCSI_HEADER_DIGEST_SIZE)) {
  ICL_DEBUG("failed to receive header digest");
  return (-1);
 }
 *availablep -= ISCSI_HEADER_DIGEST_SIZE;


 request->ip_bhs_mbuf->m_next = request->ip_ahs_mbuf;
 valid_digest = icl_mbuf_to_crc32c(request->ip_bhs_mbuf);
 request->ip_bhs_mbuf->m_next = ((void*)0);
 if (received_digest != valid_digest) {
  ICL_WARN("header digest check failed; got 0x%x, "
      "should be 0x%x", received_digest, valid_digest);
  return (-1);
 }

 return (0);
}
