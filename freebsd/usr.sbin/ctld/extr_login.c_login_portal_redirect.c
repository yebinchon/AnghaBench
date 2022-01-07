
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct portal_group {int * pg_redirection; int pg_name; } ;
struct pdu {int dummy; } ;
struct connection {TYPE_1__* conn_portal; } ;
struct TYPE_2__ {struct portal_group* p_portal_group; } ;


 int log_debugx (char*,int ,int *) ;
 int login_redirect (struct pdu*,int *) ;

__attribute__((used)) static bool
login_portal_redirect(struct connection *conn, struct pdu *request)
{
 const struct portal_group *pg;

 pg = conn->conn_portal->p_portal_group;
 if (pg->pg_redirection == ((void*)0))
  return (0);

 log_debugx("portal-group \"%s\" configured to redirect to %s",
     pg->pg_name, pg->pg_redirection);
 login_redirect(request, pg->pg_redirection);

 return (1);
}
