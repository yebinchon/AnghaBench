
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lacp_port {int lp_state; int lp_actor; int lp_partner; } ;
struct TYPE_2__ {int lip_state; } ;
struct lacp_aggregator {TYPE_1__ la_actor; TYPE_1__ la_partner; } ;


 int LACP_STATE_AGGREGATION ;
 int lacp_fill_aggregator_id_peer (TYPE_1__*,int *) ;

__attribute__((used)) static void
lacp_fill_aggregator_id(struct lacp_aggregator *la, const struct lacp_port *lp)
{
 lacp_fill_aggregator_id_peer(&la->la_partner, &lp->lp_partner);
 lacp_fill_aggregator_id_peer(&la->la_actor, &lp->lp_actor);

 la->la_actor.lip_state = lp->lp_state & LACP_STATE_AGGREGATION;
}
