
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_port {int lp_state; } ;


 int LACP_DPRINTF (struct lacp_port*) ;
 int LACP_STATE_COLLECTING ;

__attribute__((used)) static void
lacp_disable_collecting(struct lacp_port *lp)
{
 LACP_DPRINTF((lp, "collecting disabled\n"));
 lp->lp_state &= ~LACP_STATE_COLLECTING;
}
