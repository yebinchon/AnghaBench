
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_port {int p_type; } ;
typedef int device_t ;


 struct puc_port* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,int) ;

int
puc_bus_child_pnpinfo_str(device_t dev, device_t child, char *buf,
    size_t buflen)
{
 struct puc_port *port;

 port = device_get_ivars(child);
 snprintf(buf, buflen, "type=%d", port->p_type);
 return (0);
}
