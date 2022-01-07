
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rman_res_t ;
typedef int device_t ;


 void BHND_BUS_UNMAP_INTR (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline void
bhnd_unmap_intr(device_t dev, rman_res_t irq)
{
 return (BHND_BUS_UNMAP_INTR(device_get_parent(dev), dev, irq));
}
