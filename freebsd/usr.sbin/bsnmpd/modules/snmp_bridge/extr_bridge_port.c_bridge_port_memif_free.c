
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_ports {int dummy; } ;
struct bridge_port {scalar_t__ sysindex; } ;
struct bridge_if {scalar_t__ sysindex; struct bridge_port* f_bp; } ;


 struct bridge_port* TAILQ_NEXT (struct bridge_port*,int ) ;
 int TAILQ_REMOVE (struct bridge_ports*,struct bridge_port*,int ) ;
 int b_p ;
 int free (struct bridge_port*) ;

__attribute__((used)) static void
bridge_port_memif_free(struct bridge_ports *headp,
 struct bridge_if *bif)
{
 struct bridge_port *bp;

 while (bif->f_bp != ((void*)0) && bif->sysindex == bif->f_bp->sysindex) {
  bp = TAILQ_NEXT(bif->f_bp, b_p);
  TAILQ_REMOVE(headp, bif->f_bp, b_p);
  free(bif->f_bp);
  bif->f_bp = bp;
 }
}
