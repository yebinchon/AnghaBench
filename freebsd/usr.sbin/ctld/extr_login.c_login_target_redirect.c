
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pdu {int dummy; } ;
struct connection {TYPE_3__* conn_target; TYPE_2__* conn_portal; } ;
struct TYPE_6__ {char* t_redirection; int t_name; } ;
struct TYPE_5__ {TYPE_1__* p_portal_group; } ;
struct TYPE_4__ {int * pg_redirection; } ;


 int assert (int ) ;
 int log_debugx (char*,int ,char const*) ;
 int login_redirect (struct pdu*,char const*) ;

__attribute__((used)) static bool
login_target_redirect(struct connection *conn, struct pdu *request)
{
 const char *target_address;

 assert(conn->conn_portal->p_portal_group->pg_redirection == ((void*)0));

 if (conn->conn_target == ((void*)0))
  return (0);

 target_address = conn->conn_target->t_redirection;
 if (target_address == ((void*)0))
  return (0);

 log_debugx("target \"%s\" configured to redirect to %s",
   conn->conn_target->t_name, target_address);
 login_redirect(request, target_address);

 return (1);
}
