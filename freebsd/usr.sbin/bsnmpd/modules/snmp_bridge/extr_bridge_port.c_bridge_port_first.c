
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {int dummy; } ;


 struct bridge_port* TAILQ_FIRST (int *) ;
 int bridge_ports ;

__attribute__((used)) static struct bridge_port *
bridge_port_first(void)
{
 return (TAILQ_FIRST(&bridge_ports));
}
