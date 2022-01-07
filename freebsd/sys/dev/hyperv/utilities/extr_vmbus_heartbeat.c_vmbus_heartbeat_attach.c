
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int vmbus_heartbeat_cb ;
 int vmbus_ic_attach (int ,int ) ;

__attribute__((used)) static int
vmbus_heartbeat_attach(device_t dev)
{

 return (vmbus_ic_attach(dev, vmbus_heartbeat_cb));
}
