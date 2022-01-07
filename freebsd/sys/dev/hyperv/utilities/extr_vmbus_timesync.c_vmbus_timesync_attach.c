
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int vmbus_ic_attach (int ,int ) ;
 int vmbus_timesync_cb ;

__attribute__((used)) static int
vmbus_timesync_attach(device_t dev)
{

 return (vmbus_ic_attach(dev, vmbus_timesync_cb));
}
