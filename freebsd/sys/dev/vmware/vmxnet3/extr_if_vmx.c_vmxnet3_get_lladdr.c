
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int* vmx_lladdr; } ;


 int VMXNET3_CMD_GET_MACH ;
 int VMXNET3_CMD_GET_MACL ;
 int vmxnet3_read_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_get_lladdr(struct vmxnet3_softc *sc)
{
 uint32_t ml, mh;

 ml = vmxnet3_read_cmd(sc, VMXNET3_CMD_GET_MACL);
 mh = vmxnet3_read_cmd(sc, VMXNET3_CMD_GET_MACH);

 sc->vmx_lladdr[0] = ml;
 sc->vmx_lladdr[1] = ml >> 8;
 sc->vmx_lladdr[2] = ml >> 16;
 sc->vmx_lladdr[3] = ml >> 24;
 sc->vmx_lladdr[4] = mh;
 sc->vmx_lladdr[5] = mh >> 8;
}
