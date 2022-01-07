
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 intptr_t OF_xref_from_node (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static inline intptr_t
pic_xref(device_t dev)
{
 return (OF_xref_from_node(ofw_bus_get_node(dev)));
}
