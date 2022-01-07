
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 scalar_t__ UINT_MAX ;
 int intr_unmap_irq (scalar_t__) ;
 int panic (char*,int ) ;

__attribute__((used)) static void
bhnd_nexus_unmap_intr(device_t dev, device_t child, rman_res_t irq)
{
 if (irq > UINT_MAX)
  panic("invalid irq: %ju", (uintmax_t)irq);

 intr_unmap_irq(irq);
}
