
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int * vtcport_outvq; int * vtcport_invq; } ;


 int virtqueue_disable_intr (int *) ;

__attribute__((used)) static void
vtcon_port_disable_intr(struct vtcon_port *port)
{

 if (port->vtcport_invq != ((void*)0))
  virtqueue_disable_intr(port->vtcport_invq);
 if (port->vtcport_outvq != ((void*)0))
  virtqueue_disable_intr(port->vtcport_outvq);
}
