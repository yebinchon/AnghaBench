
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int dummy; } ;


 int VMXNET3_BAR1_CMD ;
 int vmxnet3_write_bar1 (struct vmxnet3_softc*,int ,int ) ;

__attribute__((used)) static void
vmxnet3_write_cmd(struct vmxnet3_softc *sc, uint32_t cmd)
{

 vmxnet3_write_bar1(sc, VMXNET3_BAR1_CMD, cmd);
}
