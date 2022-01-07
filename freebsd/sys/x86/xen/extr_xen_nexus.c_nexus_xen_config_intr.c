
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef int device_t ;


 int first_msi_irq ;
 int intr_config_intr (int,int,int) ;
 int * intr_lookup_source (int) ;
 int nexus_add_irq (int) ;
 int xen_register_pirq (int,int,int) ;

__attribute__((used)) static int
nexus_xen_config_intr(device_t dev, int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{
 int ret;





 if ((irq < first_msi_irq) && (intr_lookup_source(irq) == ((void*)0))) {
  ret = xen_register_pirq(irq, trig, pol);
  if (ret != 0)
   return (ret);
  nexus_add_irq(irq);
 }
 return (intr_config_intr(irq, trig, pol));
}
