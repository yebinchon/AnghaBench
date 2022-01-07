
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int device_t ;
struct TYPE_6__ {int ip_id; } ;


 int ATPIC_MASTER ;
 int ATPIC_SLAVE ;
 int BUS_ADD_CHILD (int ,int ,int ,int) ;
 int IO_ICU1 ;
 int IO_ICU2 ;
 int ISA_ORDER_SENSITIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 TYPE_4__* atpic_ids ;
 int bus_set_resource (int ,int ,int ,int,int) ;
 int device_set_driver (int ,TYPE_1__*) ;
 int isa_set_logicalid (int ,int ) ;
 int isa_set_vendorid (int ,int ) ;

__attribute__((used)) static void
atpic_isa_identify(driver_t *drv, device_t parent)
{
 device_t child;

 child = BUS_ADD_CHILD(parent, ISA_ORDER_SENSITIVE, drv->name, -1);
 device_set_driver(child, drv);
 isa_set_logicalid(child, atpic_ids[0].ip_id);
 isa_set_vendorid(child, atpic_ids[0].ip_id);

 bus_set_resource(child, SYS_RES_IOPORT, ATPIC_MASTER, IO_ICU1, 2);
 bus_set_resource(child, SYS_RES_IOPORT, ATPIC_SLAVE, IO_ICU2, 2);


 bus_set_resource(child, SYS_RES_IRQ, 0, 16, 1);
}
