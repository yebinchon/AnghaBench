
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int,char*,int ) ;
 int acpi_cpu_disabled ;
 int acpi_hpet_disabled ;
 int acpi_install_wakeup_handler (int ) ;
 int acpi_timer_disabled ;
 int bus_generic_attach (int *) ;
 int bus_generic_probe (int *) ;
 int device_get_softc (int *) ;
 int nexus_init_resources () ;
 int panic (char*) ;
 scalar_t__ xen_initial_domain () ;

__attribute__((used)) static int
nexus_xen_attach(device_t dev)
{
 int error;
 device_t acpi_dev = ((void*)0);

 nexus_init_resources();
 bus_generic_probe(dev);

 if (xen_initial_domain()) {

  acpi_cpu_disabled = 1;
  acpi_hpet_disabled = 1;
  acpi_timer_disabled = 1;

  acpi_dev = BUS_ADD_CHILD(dev, 10, "acpi", 0);
  if (acpi_dev == ((void*)0))
   panic("Unable to add ACPI bus to Xen Dom0");
 }

 error = bus_generic_attach(dev);
 if (xen_initial_domain() && (error == 0))
  acpi_install_wakeup_handler(device_get_softc(acpi_dev));

 return (error);
}
