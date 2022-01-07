
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;



 int MTX_DEF ;
 scalar_t__ UINT_MAX ;
 int cpu_id ;
 int cpu_vendor_id ;
 scalar_t__ first_msi_irq ;
 int intr_register_pic (int *) ;
 int msi_enabled ;
 int msi_lock ;
 int msi_pic ;
 int msix_disable_migration ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ num_io_irqs ;
 scalar_t__ num_msi_irqs ;
 int panic (char*) ;

void
msi_init(void)
{


 switch (cpu_vendor_id) {
 case 128:
 case 130:
  break;
 case 129:
  if (CPUID_TO_FAMILY(cpu_id) == 0x6 &&
      CPUID_TO_MODEL(cpu_id) >= 0xf)
   break;

 default:
  return;
 }
 if (num_msi_irqs == 0)
  return;

 first_msi_irq = num_io_irqs;
 if (num_msi_irqs > UINT_MAX - first_msi_irq)
  panic("num_msi_irqs too high");
 num_io_irqs = first_msi_irq + num_msi_irqs;

 msi_enabled = 1;
 intr_register_pic(&msi_pic);
 mtx_init(&msi_lock, "msi", ((void*)0), MTX_DEF);
}
