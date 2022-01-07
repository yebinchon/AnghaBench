
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_ports {int dummy; } ;
struct bridge_port {int dummy; } ;


 struct bridge_port* TAILQ_FIRST (struct bridge_ports*) ;
 int TAILQ_REMOVE (struct bridge_ports*,struct bridge_port*,int ) ;
 int b_p ;
 int free (struct bridge_port*) ;

__attribute__((used)) static void
bridge_ports_free(struct bridge_ports *headp)
{
 struct bridge_port *bp;

 while ((bp = TAILQ_FIRST(headp)) != ((void*)0)) {
  TAILQ_REMOVE(headp, bp, b_p);
  free(bp);
 }
}
