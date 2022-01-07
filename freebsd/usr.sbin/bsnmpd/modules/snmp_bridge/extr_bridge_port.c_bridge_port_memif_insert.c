
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_ports {int dummy; } ;
struct bridge_port {int sysindex; } ;


 int TAILQ_INSERT_AFTER (struct bridge_ports*,struct bridge_port*,struct bridge_port*,int ) ;
 int TAILQ_INSERT_HEAD (struct bridge_ports*,struct bridge_port*,int ) ;
 int b_p ;
 struct bridge_port* bridge_port_find_pos (struct bridge_ports*,int ) ;
 int bridge_port_insert_at (struct bridge_ports*,struct bridge_port*,struct bridge_port**) ;

__attribute__((used)) static void
bridge_port_memif_insert(struct bridge_ports *headp,
 struct bridge_port *bp, struct bridge_port **f_bp)
{
 struct bridge_port *temp;

 if (*f_bp != ((void*)0))
  bridge_port_insert_at(headp, bp, f_bp);
 else {
  temp = bridge_port_find_pos(headp, bp->sysindex);

  if (temp == ((void*)0))
   TAILQ_INSERT_HEAD(headp, bp, b_p);
  else
   TAILQ_INSERT_AFTER(headp, temp, bp, b_p);
  *f_bp = bp;
 }
}
