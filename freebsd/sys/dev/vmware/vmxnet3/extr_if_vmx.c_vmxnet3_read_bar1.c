
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int vmx_ioh1; int vmx_iot1; } ;
typedef int bus_size_t ;


 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static uint32_t
vmxnet3_read_bar1(struct vmxnet3_softc *sc, bus_size_t r)
{

 return (bus_space_read_4(sc->vmx_iot1, sc->vmx_ioh1, r));
}
