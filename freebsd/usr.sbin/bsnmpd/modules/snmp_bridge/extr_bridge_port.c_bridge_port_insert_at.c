
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_ports {int dummy; } ;
struct bridge_port {scalar_t__ sysindex; scalar_t__ if_idx; } ;


 int TAILQ_INSERT_BEFORE (struct bridge_port*,struct bridge_port*,int ) ;
 int TAILQ_INSERT_TAIL (struct bridge_ports*,struct bridge_port*,int ) ;
 struct bridge_port* TAILQ_NEXT (struct bridge_port*,int ) ;
 int assert (int ) ;
 int b_p ;

__attribute__((used)) static void
bridge_port_insert_at(struct bridge_ports *headp,
 struct bridge_port *bp, struct bridge_port **f_bp)
{
 struct bridge_port *t1;

 assert(f_bp != ((void*)0));

 for (t1 = *f_bp;
     t1 != ((void*)0) && bp->sysindex == t1->sysindex;
     t1 = TAILQ_NEXT(t1, b_p)) {
  if (bp->if_idx < t1->if_idx) {
   TAILQ_INSERT_BEFORE(t1, bp, b_p);
   if (*f_bp == t1)
    *f_bp = bp;
   return;
  }
 }





 if (t1 == ((void*)0))
  TAILQ_INSERT_TAIL(headp, bp, b_p);
 else
  TAILQ_INSERT_BEFORE(t1, bp, b_p);
}
