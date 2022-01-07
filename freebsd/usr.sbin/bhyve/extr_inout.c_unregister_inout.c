
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inout_port {size_t port; scalar_t__ name; int size; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int VERIFY_IOPORT (size_t,int ) ;
 int assert (int) ;
 TYPE_1__* inout_handlers ;
 int register_default_iohandler (size_t,int ) ;

int
unregister_inout(struct inout_port *iop)
{

 VERIFY_IOPORT(iop->port, iop->size);
 assert(inout_handlers[iop->port].name == iop->name);

 register_default_iohandler(iop->port, iop->size);

 return (0);
}
