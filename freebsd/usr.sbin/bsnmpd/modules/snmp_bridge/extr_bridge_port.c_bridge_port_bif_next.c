
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {scalar_t__ sysindex; } ;


 struct bridge_port* TAILQ_NEXT (struct bridge_port*,int ) ;
 int b_p ;

struct bridge_port *
bridge_port_bif_next(struct bridge_port *bp)
{
 struct bridge_port *bp_next;

 if ((bp_next = TAILQ_NEXT(bp, b_p)) == ((void*)0) ||
     bp_next->sysindex != bp->sysindex)
  return (((void*)0));

 return (bp_next);
}
