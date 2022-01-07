
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int rman_res_t ;
typedef int device_t ;


 int BHND_BUS_MAP_INTR (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
bhnd_bhndb_map_intr(device_t dev, device_t child, u_int intr, rman_res_t *irq)
{

 return (BHND_BUS_MAP_INTR(device_get_parent(dev), child, intr, irq));
}
