
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ device; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 size_t nitems (TYPE_1__*) ;
 scalar_t__ pci_get_device (int ) ;
 TYPE_1__* t5vf_pciids ;

__attribute__((used)) static int
t5vf_probe(device_t dev)
{
 uint16_t d;
 size_t i;

 d = pci_get_device(dev);
 for (i = 0; i < nitems(t5vf_pciids); i++) {
  if (d == t5vf_pciids[i].device) {
   device_set_desc(dev, t5vf_pciids[i].desc);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
