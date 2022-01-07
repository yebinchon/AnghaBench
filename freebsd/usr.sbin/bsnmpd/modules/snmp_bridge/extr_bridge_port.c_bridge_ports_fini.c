
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bridge_ports ;
 int bridge_ports_free (int *) ;

void
bridge_ports_fini(void)
{
 bridge_ports_free(&bridge_ports);
}
