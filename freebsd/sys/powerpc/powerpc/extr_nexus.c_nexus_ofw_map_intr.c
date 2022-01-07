
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int device_t ;


 int MAP_IRQ (int ,int ) ;
 int powerpc_fw_config_intr (int,int ) ;

__attribute__((used)) static int
nexus_ofw_map_intr(device_t dev, device_t child, phandle_t iparent, int icells,
    pcell_t *irq)
{
 u_int intr = MAP_IRQ(iparent, irq[0]);
 if (icells > 1)
  powerpc_fw_config_intr(intr, irq[1]);
 return (intr);
}
