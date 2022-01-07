
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {int dummy; } ;
struct bridge_if {struct bridge_port* f_bp; } ;


 int TAILQ_REMOVE (int *,struct bridge_port*,int ) ;
 int b_p ;
 struct bridge_port* bridge_port_bif_next (struct bridge_port*) ;
 int bridge_ports ;
 int free (struct bridge_port*) ;

void
bridge_port_remove(struct bridge_port *bp, struct bridge_if *bif)
{
 if (bif->f_bp == bp)
  bif->f_bp = bridge_port_bif_next(bp);

 TAILQ_REMOVE(&bridge_ports, bp, b_p);
 free(bp);
}
