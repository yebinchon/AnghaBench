
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asmc_model {int smc_desc; } ;
typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int ENXIO ;
 int asmc_ids ;
 struct asmc_model* asmc_match (int ) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,int ) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
asmc_probe(device_t dev)
{
 struct asmc_model *model;
 int rv;

 if (resource_disabled("asmc", 0))
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, asmc_ids, ((void*)0));
 if (rv > 0)
  return (rv);

 model = asmc_match(dev);
 if (!model) {
  device_printf(dev, "model not recognized\n");
  return (ENXIO);
 }
 device_set_desc(dev, model->smc_desc);

 return (rv);
}
