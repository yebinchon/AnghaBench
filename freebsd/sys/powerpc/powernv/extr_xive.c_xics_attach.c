
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int FALSE ;
 int MAX_XIVE_IRQS ;
 int OF_xref_from_node (int ) ;
 int ofw_bus_get_node (int ) ;
 int powerpc_register_pic (int ,int ,int ,int,int ) ;
 int root_pic ;

__attribute__((used)) static int
xics_attach(device_t dev)
{
 phandle_t phandle = ofw_bus_get_node(dev);


 powerpc_register_pic(root_pic, OF_xref_from_node(phandle),
     MAX_XIVE_IRQS, 1 , FALSE);

 return (0);
}
