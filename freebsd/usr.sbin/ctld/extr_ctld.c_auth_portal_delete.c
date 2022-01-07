
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_portal {struct auth_portal* ap_initator_portal; TYPE_1__* ap_auth_group; } ;
struct TYPE_2__ {int ag_portals; } ;


 int TAILQ_REMOVE (int *,struct auth_portal*,int ) ;
 int ap_next ;
 int free (struct auth_portal*) ;

__attribute__((used)) static void
auth_portal_delete(struct auth_portal *ap)
{
 TAILQ_REMOVE(&ap->ap_auth_group->ag_portals, ap, ap_next);

 free(ap->ap_initator_portal);
 free(ap);
}
