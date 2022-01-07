
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_4__ {int name; } ;


 int BUS_PROBE_DEFAULT ;


 int ISA_PNP_PROBE (int ,int ,int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,int ) ;
 int le_isa_ids ;
 TYPE_1__* le_isa_params ;
 int le_isa_probe_legacy (int ,TYPE_1__*) ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static int
le_isa_probe(device_t dev)
{
 int i;

 switch (ISA_PNP_PROBE(device_get_parent(dev), dev, le_isa_ids)) {
 case 0:
  return (BUS_PROBE_DEFAULT);
 case 129:
  for (i = 0; i < nitems(le_isa_params); i++) {
   if (le_isa_probe_legacy(dev, &le_isa_params[i]) == 0) {
    device_set_desc(dev, le_isa_params[i].name);
    return (BUS_PROBE_DEFAULT);
   }
  }

 case 128:
 default:
  return (128);
 }
}
