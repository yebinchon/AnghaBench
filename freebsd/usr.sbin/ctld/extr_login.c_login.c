
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct portal_group {int pg_tag; struct auth_group* pg_discovery_auth_group; } ;
struct pdu {scalar_t__ pdu_bhs; } ;
struct keys {int dummy; } ;
struct iscsi_bhs_login_request {scalar_t__ bhslr_tsih; int bhslr_flags; int bhslr_isid; } ;
struct connection {scalar_t__ conn_session_type; TYPE_2__* conn_target; int conn_initiator_sa; TYPE_3__* conn_port; void* conn_initiator_alias; int * conn_initiator_name; int conn_initiator_addr; int conn_initiator_isid; TYPE_1__* conn_portal; } ;
struct auth_group {scalar_t__ ag_type; int * ag_name; } ;
struct TYPE_6__ {struct auth_group* p_auth_group; TYPE_2__* p_target; } ;
struct TYPE_5__ {char* t_alias; int t_name; struct auth_group* t_auth_group; } ;
struct TYPE_4__ {struct portal_group* p_portal_group; } ;


 scalar_t__ AG_TYPE_DENY ;
 scalar_t__ AG_TYPE_NO_AUTHENTICATION ;
 scalar_t__ AG_TYPE_UNKNOWN ;
 int BHSLR_FLAGS_TRANSIT ;
 scalar_t__ BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 scalar_t__ CONN_SESSION_TYPE_DISCOVERY ;
 scalar_t__ CONN_SESSION_TYPE_NONE ;
 scalar_t__ CONN_SESSION_TYPE_NORMAL ;
 int assert (int) ;
 scalar_t__ auth_name_check (struct auth_group*,char const*) ;
 scalar_t__ auth_portal_check (struct auth_group*,int *) ;
 void* checked_strdup (char const*) ;
 int exit (int) ;
 int keys_add (struct keys*,char*,char*) ;
 int keys_add_int (struct keys*,char*,int ) ;
 int keys_delete (struct keys*) ;
 char* keys_find (struct keys*,char*) ;
 int keys_load (struct keys*,struct pdu*) ;
 struct keys* keys_new () ;
 int keys_save (struct keys*,struct pdu*) ;
 int log_debugx (char*,...) ;
 int log_errx (int,char*,...) ;
 int log_set_peer_name (int *) ;
 int log_warnx (char*,char const*) ;
 int login_chap (struct connection*,struct auth_group*) ;
 scalar_t__ login_csg (struct pdu*) ;
 scalar_t__ login_list_contains (char const*,char*) ;
 int login_negotiate (struct connection*,struct pdu*) ;
 struct pdu* login_new_response (struct pdu*) ;
 int login_portal_redirect (struct connection*,struct pdu*) ;
 struct pdu* login_receive (struct connection*,int) ;
 int login_send_error (struct pdu*,int,int) ;
 int login_set_nsg (struct pdu*,scalar_t__) ;
 int login_wait_transition (struct connection*) ;
 int memcpy (int ,int ,int) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;
 TYPE_3__* port_find_in_pg (struct portal_group*,char const*) ;
 int setproctitle (char*,int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int valid_iscsi_name (char const*) ;

void
login(struct connection *conn)
{
 struct pdu *request, *response;
 struct iscsi_bhs_login_request *bhslr;
 struct keys *request_keys, *response_keys;
 struct auth_group *ag;
 struct portal_group *pg;
 const char *initiator_name, *initiator_alias, *session_type,
     *target_name, *auth_method;
 bool redirected, fail, trans;






 log_debugx("beginning Login Phase; waiting for Login PDU");
 request = login_receive(conn, 1);
 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
 if (bhslr->bhslr_tsih != 0) {
  login_send_error(request, 0x02, 0x0a);
  log_errx(1, "received Login PDU with non-zero TSIH");
 }

 pg = conn->conn_portal->p_portal_group;

 memcpy(conn->conn_initiator_isid, bhslr->bhslr_isid,
     sizeof(conn->conn_initiator_isid));




 request_keys = keys_new();
 keys_load(request_keys, request);

 assert(conn->conn_initiator_name == ((void*)0));
 initiator_name = keys_find(request_keys, "InitiatorName");
 if (initiator_name == ((void*)0)) {
  login_send_error(request, 0x02, 0x07);
  log_errx(1, "received Login PDU without InitiatorName");
 }
 if (valid_iscsi_name(initiator_name) == 0) {
  login_send_error(request, 0x02, 0x00);
  log_errx(1, "received Login PDU with invalid InitiatorName");
 }
 conn->conn_initiator_name = checked_strdup(initiator_name);
 log_set_peer_name(conn->conn_initiator_name);
 setproctitle("%s (%s)", conn->conn_initiator_addr, conn->conn_initiator_name);

 redirected = login_portal_redirect(conn, request);
 if (redirected) {
  log_debugx("initiator redirected; exiting");
  exit(0);
 }

 initiator_alias = keys_find(request_keys, "InitiatorAlias");
 if (initiator_alias != ((void*)0))
  conn->conn_initiator_alias = checked_strdup(initiator_alias);

 assert(conn->conn_session_type == CONN_SESSION_TYPE_NONE);
 session_type = keys_find(request_keys, "SessionType");
 if (session_type != ((void*)0)) {
  if (strcmp(session_type, "Normal") == 0) {
   conn->conn_session_type = CONN_SESSION_TYPE_NORMAL;
  } else if (strcmp(session_type, "Discovery") == 0) {
   conn->conn_session_type = CONN_SESSION_TYPE_DISCOVERY;
  } else {
   login_send_error(request, 0x02, 0x00);
   log_errx(1, "received Login PDU with invalid "
       "SessionType \"%s\"", session_type);
  }
 } else
  conn->conn_session_type = CONN_SESSION_TYPE_NORMAL;

 assert(conn->conn_target == ((void*)0));
 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
  target_name = keys_find(request_keys, "TargetName");
  if (target_name == ((void*)0)) {
   login_send_error(request, 0x02, 0x07);
   log_errx(1, "received Login PDU without TargetName");
  }

  conn->conn_port = port_find_in_pg(pg, target_name);
  if (conn->conn_port == ((void*)0)) {
   login_send_error(request, 0x02, 0x03);
   log_errx(1, "requested target \"%s\" not found",
       target_name);
  }
  conn->conn_target = conn->conn_port->p_target;
 }




 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
  ag = conn->conn_port->p_auth_group;
  if (ag == ((void*)0))
   ag = conn->conn_target->t_auth_group;
  if (ag->ag_name != ((void*)0)) {
   log_debugx("initiator requests to connect "
       "to target \"%s\"; auth-group \"%s\"",
       conn->conn_target->t_name,
       ag->ag_name);
  } else {
   log_debugx("initiator requests to connect "
       "to target \"%s\"", conn->conn_target->t_name);
  }
 } else {
  assert(conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY);
  ag = pg->pg_discovery_auth_group;
  if (ag->ag_name != ((void*)0)) {
   log_debugx("initiator requests "
       "discovery session; auth-group \"%s\"", ag->ag_name);
  } else {
   log_debugx("initiator requests discovery session");
  }
 }

 if (ag->ag_type == AG_TYPE_DENY) {
  login_send_error(request, 0x02, 0x01);
  log_errx(1, "auth-type is \"deny\"");
 }

 if (ag->ag_type == AG_TYPE_UNKNOWN) {



  login_send_error(request, 0x02, 0x01);
  log_errx(1, "auth-type not set, denying access");
 }




 if (auth_name_check(ag, initiator_name) != 0) {
  login_send_error(request, 0x02, 0x02);
  log_errx(1, "initiator does not match allowed initiator names");
 }

 if (auth_portal_check(ag, &conn->conn_initiator_sa) != 0) {
  login_send_error(request, 0x02, 0x02);
  log_errx(1, "initiator does not match allowed "
      "initiator portals");
 }





 if (login_csg(request) == BHSLR_STAGE_OPERATIONAL_NEGOTIATION) {
  if (ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
   login_send_error(request, 0x02, 0x01);
   log_errx(1, "initiator skipped the authentication, "
       "but authentication is required");
  }

  keys_delete(request_keys);

  log_debugx("initiator skipped the authentication, "
      "and we don't need it; proceeding with negotiation");
  login_negotiate(conn, request);
  return;
 }

 fail = 0;
 response = login_new_response(request);
 response_keys = keys_new();
 trans = (bhslr->bhslr_flags & BHSLR_FLAGS_TRANSIT) != 0;
 auth_method = keys_find(request_keys, "AuthMethod");
 if (ag->ag_type == AG_TYPE_NO_AUTHENTICATION) {
  log_debugx("authentication not required");
  if (auth_method == ((void*)0) ||
      login_list_contains(auth_method, "None")) {
   keys_add(response_keys, "AuthMethod", "None");
  } else {
   log_warnx("initiator requests "
       "AuthMethod \"%s\" instead of \"None\"",
       auth_method);
   keys_add(response_keys, "AuthMethod", "Reject");
  }
  if (trans)
   login_set_nsg(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
 } else {
  log_debugx("CHAP authentication required");
  if (auth_method == ((void*)0) ||
      login_list_contains(auth_method, "CHAP")) {
   keys_add(response_keys, "AuthMethod", "CHAP");
  } else {
   log_warnx("initiator requests unsupported "
       "AuthMethod \"%s\" instead of \"CHAP\"",
       auth_method);
   keys_add(response_keys, "AuthMethod", "Reject");
   fail = 1;
  }
 }
 if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
  if (conn->conn_target->t_alias != ((void*)0))
   keys_add(response_keys,
       "TargetAlias", conn->conn_target->t_alias);
  keys_add_int(response_keys,
      "TargetPortalGroupTag", pg->pg_tag);
 }
 keys_save(response_keys, response);

 pdu_send(response);
 pdu_delete(response);
 keys_delete(response_keys);
 pdu_delete(request);
 keys_delete(request_keys);

 if (fail) {
  log_debugx("sent reject for AuthMethod; exiting");
  exit(1);
 }

 if (ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
  login_chap(conn, ag);
  login_negotiate(conn, ((void*)0));
 } else if (trans) {
  login_negotiate(conn, ((void*)0));
 } else {
  login_wait_transition(conn);
 }
}
