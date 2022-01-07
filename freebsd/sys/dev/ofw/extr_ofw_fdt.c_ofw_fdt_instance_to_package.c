
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int ofw_t ;
typedef int ihandle_t ;


 int OF_node_from_xref (int ) ;

__attribute__((used)) static phandle_t
ofw_fdt_instance_to_package(ofw_t ofw, ihandle_t instance)
{


 return (OF_node_from_xref(instance));
}
