
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_invq; } ;


 int virtqueue_enable_intr (int ) ;

__attribute__((used)) static void
vtcon_port_enable_intr(struct vtcon_port *port)
{





 virtqueue_enable_intr(port->vtcport_invq);
}
