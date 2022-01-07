
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_if {int dummy; } ;


 int bridge_port_memif_free (int *,struct bridge_if*) ;
 int bridge_ports ;

void
bridge_members_free(struct bridge_if *bif)
{
 bridge_port_memif_free(&bridge_ports, bif);
}
