
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vmxnet3_softc {int* vmx_vlan_filter; } ;



__attribute__((used)) static void
vmxnet3_update_vlan_filter(struct vmxnet3_softc *sc, int add, uint16_t tag)
{
 int idx, bit;

 if (tag == 0 || tag > 4095)
  return;

 idx = (tag >> 5) & 0x7F;
 bit = tag & 0x1F;


 if (add)
  sc->vmx_vlan_filter[idx] |= (1 << bit);
 else
  sc->vmx_vlan_filter[idx] &= ~(1 << bit);
}
