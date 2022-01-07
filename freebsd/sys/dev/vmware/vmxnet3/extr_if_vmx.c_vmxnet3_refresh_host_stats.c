
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_softc {int dummy; } ;


 int VMXNET3_CMD_GET_STATS ;
 int vmxnet3_write_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static void
vmxnet3_refresh_host_stats(struct vmxnet3_softc *sc)
{

 vmxnet3_write_cmd(sc, VMXNET3_CMD_GET_STATS);
}
