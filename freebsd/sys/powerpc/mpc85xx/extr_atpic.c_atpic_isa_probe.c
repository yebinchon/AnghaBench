
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ISA_PNP_PROBE (int ,int ,int ) ;
 int atpic_ids ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
atpic_isa_probe(device_t dev)
{
 int res;

 res = ISA_PNP_PROBE(device_get_parent(dev), dev, atpic_ids);
 if (res > 0)
  return (res);

 device_set_desc(dev, "PC/AT compatible PIC");
 return (res);
}
