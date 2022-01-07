
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int ofw_bus_reg_to_rl_helper (int ,int ,int ,int ,struct resource_list*,char*) ;

int
ofw_bus_reg_to_rl(device_t dev, phandle_t node, pcell_t acells, pcell_t scells,
    struct resource_list *rl)
{

 return (ofw_bus_reg_to_rl_helper(dev, node, acells, scells, rl, "reg"));
}
