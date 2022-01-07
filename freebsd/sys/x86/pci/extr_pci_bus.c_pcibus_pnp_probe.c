
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int device_quiet (int ) ;
 int pcibus_pnp_ids ;

__attribute__((used)) static int
pcibus_pnp_probe(device_t dev)
{
 int result;

 if ((result = ISA_PNP_PROBE(device_get_parent(dev), dev, pcibus_pnp_ids)) <= 0)
  device_quiet(dev);
 return(result);
}
