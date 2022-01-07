
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;



__attribute__((used)) static int
xlp_simplebus_ofw_map_intr(device_t dev, device_t child, phandle_t iparent, int icells,
    pcell_t *irq)
{

 return ((int)irq[0]);
}
