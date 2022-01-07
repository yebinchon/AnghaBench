
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_6__ {TYPE_1__* ich_arg; int ich_func; } ;
struct TYPE_5__ {int vmbus_idtvec; TYPE_4__ vmbus_intrhook; int vmbus_event_proc; int vmbus_dev; } ;


 int cold ;
 int config_intrhook_establish (TYPE_4__*) ;
 TYPE_1__* device_get_softc (int ) ;
 int vmbus_doattach (TYPE_1__*) ;
 int vmbus_event_proc_dummy ;
 int vmbus_intrhook ;
 TYPE_1__* vmbus_sc ;

__attribute__((used)) static int
vmbus_attach(device_t dev)
{
 vmbus_sc = device_get_softc(dev);
 vmbus_sc->vmbus_dev = dev;
 vmbus_sc->vmbus_idtvec = -1;






 vmbus_sc->vmbus_event_proc = vmbus_event_proc_dummy;
 if (!cold)
  vmbus_doattach(vmbus_sc);


 return (0);
}
