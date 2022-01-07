
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int vmx_ioh1; int vmx_iot1; } ;


 int BUS_SPACE_BARRIER_READ ;
 int BUS_SPACE_BARRIER_WRITE ;
 int VMXNET3_BAR1_CMD ;
 int bus_space_barrier (int ,int ,int ,int ,int) ;
 int vmxnet3_read_bar1 (struct vmxnet3_softc*,int ) ;
 int vmxnet3_write_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static uint32_t
vmxnet3_read_cmd(struct vmxnet3_softc *sc, uint32_t cmd)
{

 vmxnet3_write_cmd(sc, cmd);
 bus_space_barrier(sc->vmx_iot1, sc->vmx_ioh1, 0, 0,
     BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
 return (vmxnet3_read_bar1(sc, VMXNET3_BAR1_CMD));
}
