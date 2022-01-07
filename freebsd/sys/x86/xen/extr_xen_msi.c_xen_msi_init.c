
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPASS (int) ;
 int MTX_DEF ;
 scalar_t__ UINT_MAX ;
 scalar_t__ first_msi_irq ;
 int msi_lock ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ num_io_irqs ;
 scalar_t__ num_msi_irqs ;
 int panic (char*) ;

void
xen_msi_init(void)
{

 MPASS(num_io_irqs > 0);
 first_msi_irq = num_io_irqs;
 if (num_msi_irqs > UINT_MAX - first_msi_irq)
  panic("num_msi_irqs too high");
 num_io_irqs = first_msi_irq + num_msi_irqs;

 mtx_init(&msi_lock, "msi", ((void*)0), MTX_DEF);
}
