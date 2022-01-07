
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int* vmx_lladdr; } ;


 int VMXNET3_BAR1_MACH ;
 int VMXNET3_BAR1_MACL ;
 int vmxnet3_write_bar1 (struct vmxnet3_softc*,int ,int) ;

__attribute__((used)) static void
vmxnet3_set_lladdr(struct vmxnet3_softc *sc)
{
 uint32_t ml, mh;

 ml = sc->vmx_lladdr[0];
 ml |= sc->vmx_lladdr[1] << 8;
 ml |= sc->vmx_lladdr[2] << 16;
 ml |= sc->vmx_lladdr[3] << 24;
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_MACL, ml);

 mh = sc->vmx_lladdr[4];
 mh |= sc->vmx_lladdr[5] << 8;
 vmxnet3_write_bar1(sc, VMXNET3_BAR1_MACH, mh);
}
