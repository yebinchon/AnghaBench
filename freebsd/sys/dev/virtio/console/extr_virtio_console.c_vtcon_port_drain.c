
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int vtcport_invq; } ;


 int vtcon_port_drain_bufs (int ) ;

__attribute__((used)) static void
vtcon_port_drain(struct vtcon_port *port)
{

 vtcon_port_drain_bufs(port->vtcport_invq);
}
