
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_port {int p_nr; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct puc_port* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

int
puc_bus_print_child(device_t dev, device_t child)
{
 struct puc_port *port;
 int retval;

 port = device_get_ivars(child);
 retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += printf(" at port %d", port->p_nr);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
