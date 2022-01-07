
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int vmx_ioh0; int vmx_iot0; } ;
typedef int bus_size_t ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static void
vmxnet3_write_bar0(struct vmxnet3_softc *sc, bus_size_t r, uint32_t v)
{

 bus_space_write_4(sc->vmx_iot0, sc->vmx_ioh0, r, v);
}
