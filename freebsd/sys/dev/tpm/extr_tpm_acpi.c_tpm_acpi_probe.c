
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int tpm_ids ;

__attribute__((used)) static int
tpm_acpi_probe(device_t dev)
{
 int rv;

 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, tpm_ids, ((void*)0));
 if (rv <= 0)
  device_set_desc(dev, "Trusted Platform Module");

 return (rv);
}
