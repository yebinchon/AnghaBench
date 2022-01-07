
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_INTR_APIC ;
 int acpi_SetDefaultIntrModel (int ) ;
 int max (int,int ) ;
 int num_io_irqs ;
 scalar_t__ xen_initial_domain () ;

__attribute__((used)) static int
xenpv_setup_io(void)
{

 if (xen_initial_domain()) {






  num_io_irqs = max(255, num_io_irqs);

  acpi_SetDefaultIntrModel(ACPI_INTR_APIC);
 }
 return (0);
}
