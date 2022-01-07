
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int ENXIO ;
 int PUC_IVAR_TYPE ;
 uintptr_t PUC_TYPE_PARALLEL ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int ppc_probe (int ,int ) ;

__attribute__((used)) static int
ppc_puc_probe(device_t dev)
{
 device_t parent;
 uintptr_t type;

 parent = device_get_parent(dev);
 if (BUS_READ_IVAR(parent, dev, PUC_IVAR_TYPE, &type))
  return (ENXIO);
 if (type != PUC_TYPE_PARALLEL)
  return (ENXIO);

 device_set_desc(dev, "Parallel port");
 return (ppc_probe(dev, 0));
}
