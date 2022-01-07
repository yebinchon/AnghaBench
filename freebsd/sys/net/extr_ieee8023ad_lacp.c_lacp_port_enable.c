
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_port {int lp_state; } ;


 int LACP_STATE_AGGREGATION ;

__attribute__((used)) static void
lacp_port_enable(struct lacp_port *lp)
{
 lp->lp_state |= LACP_STATE_AGGREGATION;
}
