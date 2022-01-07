
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_child {int qpcnt; } ;
typedef int device_t ;


 struct ntb_transport_child* device_get_ivars (int ) ;

int
ntb_transport_queue_count(device_t dev)
{
 struct ntb_transport_child *nc = device_get_ivars(dev);

 return (nc->qpcnt);
}
