
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int dummy; } ;


 int ena_disable_msix (struct ena_adapter*) ;
 int ena_free_io_irq (struct ena_adapter*) ;
 int ena_free_mgmnt_irq (struct ena_adapter*) ;

__attribute__((used)) static void
ena_free_irqs(struct ena_adapter* adapter)
{

 ena_free_io_irq(adapter);
 ena_free_mgmnt_irq(adapter);
 ena_disable_msix(adapter);
}
