
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmxnet3_softc {int dummy; } ;


 int VMXNET3_CMD_GET_LINK ;
 int vmxnet3_read_cmd (struct vmxnet3_softc*,int ) ;

__attribute__((used)) static int
vmxnet3_link_is_up(struct vmxnet3_softc *sc)
{
 uint32_t status;

 status = vmxnet3_read_cmd(sc, VMXNET3_CMD_GET_LINK);
 return !!(status & 0x1);
}
