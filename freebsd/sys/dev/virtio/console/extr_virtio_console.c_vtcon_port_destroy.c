
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_id; int vtcport_mtx; int * vtcport_outvq; int * vtcport_invq; int * vtcport_scport; int * vtcport_sc; } ;


 int M_DEVBUF ;
 int free (struct vtcon_port*,int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
vtcon_port_destroy(struct vtcon_port *port)
{

 port->vtcport_sc = ((void*)0);
 port->vtcport_scport = ((void*)0);
 port->vtcport_invq = ((void*)0);
 port->vtcport_outvq = ((void*)0);
 port->vtcport_id = -1;
 mtx_destroy(&port->vtcport_mtx);
 free(port, M_DEVBUF);
}
