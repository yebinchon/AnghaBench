
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portal_group {int pg_portals; } ;
struct portal {struct portal_group* p_portal_group; int p_targets; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct portal*,int ) ;
 struct portal* calloc (int,int) ;
 int log_err (int,char*) ;
 int p_next ;

__attribute__((used)) static struct portal *
portal_new(struct portal_group *pg)
{
 struct portal *portal;

 portal = calloc(1, sizeof(*portal));
 if (portal == ((void*)0))
  log_err(1, "calloc");
 TAILQ_INIT(&portal->p_targets);
 portal->p_portal_group = pg;
 TAILQ_INSERT_TAIL(&pg->pg_portals, portal, p_next);
 return (portal);
}
