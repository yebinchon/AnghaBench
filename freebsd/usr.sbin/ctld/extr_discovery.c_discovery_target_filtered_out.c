
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target {int t_name; struct auth_group* t_auth_group; } ;
struct portal_group {scalar_t__ pg_discovery_filter; TYPE_2__* pg_discovery_auth_group; } ;
struct port {struct auth_group* p_auth_group; struct target* p_target; } ;
struct connection {int * conn_user; int * conn_chap; int conn_initiator_name; int conn_initiator_sa; TYPE_1__* conn_portal; } ;
struct auth_group {scalar_t__ ag_type; } ;
struct auth {int a_secret; } ;
struct TYPE_4__ {scalar_t__ ag_type; } ;
struct TYPE_3__ {struct portal_group* p_portal_group; } ;


 scalar_t__ AG_TYPE_NO_AUTHENTICATION ;
 scalar_t__ PG_FILTER_PORTAL ;
 scalar_t__ PG_FILTER_PORTAL_NAME ;
 scalar_t__ PG_FILTER_PORTAL_NAME_AUTH ;
 TYPE_2__* PG_FILTER_UNKNOWN ;
 int assert (int) ;
 struct auth* auth_find (struct auth_group const*,int *) ;
 scalar_t__ auth_name_check (struct auth_group const*,int ) ;
 scalar_t__ auth_portal_check (struct auth_group const*,int *) ;
 int chap_authenticate (int *,int ) ;
 int log_debugx (char*,int *,...) ;

__attribute__((used)) static bool
discovery_target_filtered_out(const struct connection *conn,
    const struct port *port)
{
 const struct auth_group *ag;
 const struct portal_group *pg;
 const struct target *targ;
 const struct auth *auth;
 int error;

 targ = port->p_target;
 ag = port->p_auth_group;
 if (ag == ((void*)0))
  ag = targ->t_auth_group;
 pg = conn->conn_portal->p_portal_group;

 assert(pg->pg_discovery_auth_group != PG_FILTER_UNKNOWN);

 if (pg->pg_discovery_filter >= PG_FILTER_PORTAL &&
     auth_portal_check(ag, &conn->conn_initiator_sa) != 0) {
  log_debugx("initiator does not match initiator portals "
      "allowed for target \"%s\"; skipping", targ->t_name);
  return (1);
 }

 if (pg->pg_discovery_filter >= PG_FILTER_PORTAL_NAME &&
     auth_name_check(ag, conn->conn_initiator_name) != 0) {
  log_debugx("initiator does not match initiator names "
      "allowed for target \"%s\"; skipping", targ->t_name);
  return (1);
 }

 if (pg->pg_discovery_filter >= PG_FILTER_PORTAL_NAME_AUTH &&
     ag->ag_type != AG_TYPE_NO_AUTHENTICATION) {
  if (conn->conn_chap == ((void*)0)) {
   assert(pg->pg_discovery_auth_group->ag_type ==
       AG_TYPE_NO_AUTHENTICATION);

   log_debugx("initiator didn't authenticate, but target "
       "\"%s\" requires CHAP; skipping", targ->t_name);
   return (1);
  }

  assert(conn->conn_user != ((void*)0));
  auth = auth_find(ag, conn->conn_user);
  if (auth == ((void*)0)) {
   log_debugx("CHAP user \"%s\" doesn't match target "
       "\"%s\"; skipping", conn->conn_user, targ->t_name);
   return (1);
  }

  error = chap_authenticate(conn->conn_chap, auth->a_secret);
  if (error != 0) {
   log_debugx("password for CHAP user \"%s\" doesn't "
       "match target \"%s\"; skipping",
       conn->conn_user, targ->t_name);
   return (1);
  }
 }

 return (0);
}
