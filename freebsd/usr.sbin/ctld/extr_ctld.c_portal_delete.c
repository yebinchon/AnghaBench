
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct portal {struct portal* p_listen; int * p_ai; TYPE_1__* p_portal_group; } ;
struct TYPE_2__ {int pg_portals; } ;


 int TAILQ_REMOVE (int *,struct portal*,int ) ;
 int free (struct portal*) ;
 int freeaddrinfo (int *) ;
 int p_next ;

__attribute__((used)) static void
portal_delete(struct portal *portal)
{

 TAILQ_REMOVE(&portal->p_portal_group->pg_portals, portal, p_next);
 if (portal->p_ai != ((void*)0))
  freeaddrinfo(portal->p_ai);
 free(portal->p_listen);
 free(portal);
}
