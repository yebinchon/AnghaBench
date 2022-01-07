
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ig4iic_softc_t ;
typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 int * device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ig4iic_ids ;

__attribute__((used)) static int
ig4iic_acpi_probe(device_t dev)
{
 ig4iic_softc_t *sc;
 int rv;

 sc = device_get_softc(dev);
 if (acpi_disabled("ig4iic"))
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, ig4iic_ids, ((void*)0));
 if (rv > 0)
  return (rv);

 device_set_desc(dev, "Designware I2C Controller");
 return (rv);
}
