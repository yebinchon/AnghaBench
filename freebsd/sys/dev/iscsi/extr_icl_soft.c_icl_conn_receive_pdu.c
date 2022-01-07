
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct iscsi_bhs {int dummy; } ;
struct icl_pdu {int ip_data_len; } ;
struct icl_conn {int ic_receive_state; size_t ic_receive_len; size_t ic_max_data_segment_length; int ic_header_crc32c; int ic_data_crc32c; struct icl_pdu* ic_receive_pdu; struct socket* ic_socket; } ;


 int EINVAL ;





 int ICL_DEBUG (char*,...) ;
 int ICL_WARN (char*,size_t,size_t) ;
 size_t ISCSI_DATA_DIGEST_SIZE ;
 size_t ISCSI_HEADER_DIGEST_SIZE ;
 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int icl_conn_fail (struct icl_conn*) ;
 size_t icl_pdu_ahs_length (struct icl_pdu*) ;
 int icl_pdu_check_data_digest (struct icl_pdu*,size_t*) ;
 int icl_pdu_check_header_digest (struct icl_pdu*,size_t*) ;
 size_t icl_pdu_data_segment_length (struct icl_pdu*) ;
 size_t icl_pdu_data_segment_receive_len (struct icl_pdu*) ;
 int icl_pdu_receive_ahs (struct icl_pdu*,size_t*) ;
 int icl_pdu_receive_bhs (struct icl_pdu*,size_t*) ;
 int icl_pdu_receive_data_segment (struct icl_pdu*,size_t*,int*) ;
 struct icl_pdu* icl_soft_conn_new_pdu (struct icl_conn*,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static struct icl_pdu *
icl_conn_receive_pdu(struct icl_conn *ic, size_t *availablep)
{
 struct icl_pdu *request;
 struct socket *so;
 size_t len;
 int error;
 bool more_needed;

 so = ic->ic_socket;

 if (ic->ic_receive_state == 131) {
  KASSERT(ic->ic_receive_pdu == ((void*)0),
      ("ic->ic_receive_pdu != NULL"));
  request = icl_soft_conn_new_pdu(ic, M_NOWAIT);
  if (request == ((void*)0)) {
   ICL_DEBUG("failed to allocate PDU; "
       "dropping connection");
   icl_conn_fail(ic);
   return (((void*)0));
  }
  ic->ic_receive_pdu = request;
 } else {
  KASSERT(ic->ic_receive_pdu != ((void*)0),
      ("ic->ic_receive_pdu == NULL"));
  request = ic->ic_receive_pdu;
 }

 if (*availablep < ic->ic_receive_len) {




  return (((void*)0));
 }

 switch (ic->ic_receive_state) {
 case 131:

  error = icl_pdu_receive_bhs(request, availablep);
  if (error != 0) {
   ICL_DEBUG("failed to receive BHS; "
       "dropping connection");
   break;
  }






  len = icl_pdu_data_segment_length(request);
  if (len > ic->ic_max_data_segment_length) {
   ICL_WARN("received data segment "
       "length %zd is larger than negotiated "
       "MaxDataSegmentLength %zd; "
       "dropping connection",
       len, ic->ic_max_data_segment_length);
   error = EINVAL;
   break;
  }

  ic->ic_receive_state = 132;
  ic->ic_receive_len = icl_pdu_ahs_length(request);
  break;

 case 132:

  error = icl_pdu_receive_ahs(request, availablep);
  if (error != 0) {
   ICL_DEBUG("failed to receive AHS; "
       "dropping connection");
   break;
  }
  ic->ic_receive_state = 128;
  if (ic->ic_header_crc32c == 0)
   ic->ic_receive_len = 0;
  else
   ic->ic_receive_len = ISCSI_HEADER_DIGEST_SIZE;
  break;

 case 128:

  error = icl_pdu_check_header_digest(request, availablep);
  if (error != 0) {
   ICL_DEBUG("header digest failed; "
       "dropping connection");
   break;
  }

  ic->ic_receive_state = 130;
  ic->ic_receive_len =
      icl_pdu_data_segment_receive_len(request);
  break;

 case 130:

  error = icl_pdu_receive_data_segment(request, availablep,
      &more_needed);
  if (error != 0) {
   ICL_DEBUG("failed to receive data segment;"
       "dropping connection");
   break;
  }

  if (more_needed)
   break;

  ic->ic_receive_state = 129;
  if (request->ip_data_len == 0 || ic->ic_data_crc32c == 0)
   ic->ic_receive_len = 0;
  else
   ic->ic_receive_len = ISCSI_DATA_DIGEST_SIZE;
  break;

 case 129:

  error = icl_pdu_check_data_digest(request, availablep);
  if (error != 0) {
   ICL_DEBUG("data digest failed; "
       "dropping connection");
   break;
  }





  ic->ic_receive_state = 131;
  ic->ic_receive_len = sizeof(struct iscsi_bhs);
  ic->ic_receive_pdu = ((void*)0);
  return (request);

 default:
  panic("invalid ic_receive_state %d\n", ic->ic_receive_state);
 }

 if (error != 0) {




  icl_conn_fail(ic);
 }

 return (((void*)0));
}
