
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_port {int dummy; } ;


 int atomic_subtract_int (int *,int) ;
 int vtcon_pending_free ;
 int vtcon_port_destroy (struct vtcon_port*) ;

__attribute__((used)) static void
vtcon_tty_free(void *xport)
{
 struct vtcon_port *port;

 port = xport;

 vtcon_port_destroy(port);
 atomic_subtract_int(&vtcon_pending_free, 1);
}
