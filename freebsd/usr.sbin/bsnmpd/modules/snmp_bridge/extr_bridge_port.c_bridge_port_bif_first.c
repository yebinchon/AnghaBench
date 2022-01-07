
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {int dummy; } ;
struct bridge_if {struct bridge_port* f_bp; } ;



struct bridge_port *
bridge_port_bif_first(struct bridge_if *bif)
{
 return (bif->f_bp);
}
