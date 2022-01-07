
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {int * keys_values; int ** keys_names; } ;
struct iscsi_bhs_login_response {int bhslr_tsih; } ;
struct connection {scalar_t__ conn_session_type; int conn_max_recv_data_segment_limit; int conn_max_send_data_segment_limit; int conn_max_burst_limit; int conn_first_burst_limit; int conn_max_send_data_segment_length; scalar_t__ conn_first_burst_length; scalar_t__ conn_max_burst_length; TYPE_3__* conn_portal; TYPE_1__* conn_target; } ;
struct TYPE_6__ {TYPE_2__* p_portal_group; } ;
struct TYPE_5__ {int pg_tag; int pg_offload; } ;
struct TYPE_4__ {int * t_alias; } ;


 int BHSLR_STAGE_FULL_FEATURE_PHASE ;
 int BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 scalar_t__ CONN_SESSION_TYPE_NORMAL ;
 int KEYS_MAX ;
 void* MAX_DATA_SEGMENT_LENGTH ;
 int assert (int) ;
 int exit (int ) ;
 int htons (int) ;
 int kernel_limits (int ,int*,int*,int*,int*) ;
 int keys_add (struct keys*,char*,int *) ;
 int keys_add_int (struct keys*,char*,int ) ;
 int keys_delete (struct keys*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 int log_debugx (char*) ;
 int log_errx (int,char*) ;
 int login_negotiate_key (struct pdu*,int *,int ,int,struct keys*) ;
 struct pdu* login_new_response (struct pdu*) ;
 struct pdu* login_receive (struct connection*,int) ;
 int login_set_csg (struct pdu*,int ) ;
 int login_set_nsg (struct pdu*,int ) ;
 int login_target_redirect (struct connection*,struct pdu*) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;

__attribute__((used)) static void
login_negotiate(struct connection *conn, struct pdu *request)
{
 struct pdu *response;
 struct iscsi_bhs_login_response *bhslr2;
 struct keys *request_keys, *response_keys;
 int i;
 bool redirected, skipped_security;

 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {




  assert(conn->conn_target != ((void*)0));
  conn->conn_max_recv_data_segment_limit = (1 << 24) - 1;
  conn->conn_max_send_data_segment_limit = (1 << 24) - 1;
  conn->conn_max_burst_limit = (1 << 24) - 1;
  conn->conn_first_burst_limit = (1 << 24) - 1;
  kernel_limits(conn->conn_portal->p_portal_group->pg_offload,
      &conn->conn_max_recv_data_segment_limit,
      &conn->conn_max_send_data_segment_limit,
      &conn->conn_max_burst_limit,
      &conn->conn_first_burst_limit);


  assert(conn->conn_max_recv_data_segment_limit >= 512);
  assert(conn->conn_max_recv_data_segment_limit < (1 << 24));
  assert(conn->conn_max_send_data_segment_limit >= 512);
  assert(conn->conn_max_send_data_segment_limit < (1 << 24));
  assert(conn->conn_max_burst_limit >= 512);
  assert(conn->conn_max_burst_limit < (1 << 24));
  assert(conn->conn_first_burst_limit >= 512);
  assert(conn->conn_first_burst_limit < (1 << 24));
  assert(conn->conn_first_burst_limit <=
      conn->conn_max_burst_limit);






  if (conn->conn_max_send_data_segment_limit <
      conn->conn_max_send_data_segment_length) {
   conn->conn_max_send_data_segment_length =
       conn->conn_max_send_data_segment_limit;
  }
 } else {
  conn->conn_max_recv_data_segment_limit =
      MAX_DATA_SEGMENT_LENGTH;
  conn->conn_max_send_data_segment_limit =
      MAX_DATA_SEGMENT_LENGTH;
 }

 if (request == ((void*)0)) {
  log_debugx("beginning operational parameter negotiation; "
      "waiting for Login PDU");
  request = login_receive(conn, 0);
  skipped_security = 0;
 } else
  skipped_security = 1;







 redirected = login_target_redirect(conn, request);
 if (redirected) {
  log_debugx("initiator redirected; exiting");
  exit(0);
 }

 request_keys = keys_new();
 keys_load(request_keys, request);

 response = login_new_response(request);
 bhslr2 = (struct iscsi_bhs_login_response *)response->pdu_bhs;
 bhslr2->bhslr_tsih = htons(0xbadd);
 login_set_csg(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
 login_set_nsg(response, BHSLR_STAGE_FULL_FEATURE_PHASE);
 response_keys = keys_new();

 if (skipped_security &&
     conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
  if (conn->conn_target->t_alias != ((void*)0))
   keys_add(response_keys,
       "TargetAlias", conn->conn_target->t_alias);
  keys_add_int(response_keys, "TargetPortalGroupTag",
      conn->conn_portal->p_portal_group->pg_tag);
 }

 for (i = 0; i < KEYS_MAX; i++) {
  if (request_keys->keys_names[i] == ((void*)0))
   break;

  login_negotiate_key(request, request_keys->keys_names[i],
      request_keys->keys_values[i], skipped_security,
      response_keys);
 }
 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL &&
     conn->conn_first_burst_length > conn->conn_max_burst_length) {
  log_errx(1, "initiator sent FirstBurstLength > MaxBurstLength");
 }

 log_debugx("operational parameter negotiation done; "
     "transitioning to Full Feature Phase");

 keys_save(response_keys, response);
 pdu_send(response);
 pdu_delete(response);
 keys_delete(response_keys);
 pdu_delete(request);
 keys_delete(request_keys);
}
