
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int ENXIO ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int isa_get_logicalid (int ) ;
 int isa_get_vendorid (int ) ;
 int pnpmss_ids ;

__attribute__((used)) static int
pnpmss_probe(device_t dev)
{
 u_int32_t lid, vid;

 lid = isa_get_logicalid(dev);
 vid = isa_get_vendorid(dev);
 if (lid == 0x01000000 && vid != 0x0100a90d)
  return ENXIO;
 return ISA_PNP_PROBE(device_get_parent(dev), dev, pnpmss_ids);
}
