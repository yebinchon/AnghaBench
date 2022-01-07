
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int vmbus_ic_probe (int ,int ) ;
 int vmbus_kvp_descs ;

__attribute__((used)) static int
hv_kvp_probe(device_t dev)
{

 return (vmbus_ic_probe(dev, vmbus_kvp_descs));
}
