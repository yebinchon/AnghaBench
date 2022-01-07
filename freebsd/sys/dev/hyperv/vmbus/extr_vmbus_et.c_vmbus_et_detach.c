
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int et_deregister (int *) ;
 int vmbus_et ;

__attribute__((used)) static int
vmbus_et_detach(device_t dev)
{
 return (et_deregister(&vmbus_et));
}
