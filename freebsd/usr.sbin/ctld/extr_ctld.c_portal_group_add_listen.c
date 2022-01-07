
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portal_group {int dummy; } ;
struct portal {int p_iser; int p_listen; int p_ai; } ;


 int checked_strdup (char const*) ;
 int log_warnx (char*,int ) ;
 scalar_t__ parse_addr_port (int ,char*,int *) ;
 int portal_delete (struct portal*) ;
 struct portal* portal_new (struct portal_group*) ;

int
portal_group_add_listen(struct portal_group *pg, const char *value, bool iser)
{
 struct portal *portal;

 portal = portal_new(pg);
 portal->p_listen = checked_strdup(value);
 portal->p_iser = iser;

 if (parse_addr_port(portal->p_listen, "3260", &portal->p_ai)) {
  log_warnx("invalid listen address %s", portal->p_listen);
  portal_delete(portal);
  return (1);
 }






 return (0);
}
