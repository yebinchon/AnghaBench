
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int cntxt_id; int opcode; int cmd; } ;
struct TYPE_6__ {int mode; TYPE_1__ hdr; } ;
typedef TYPE_2__ qla_set_mac_rcv_mode_t ;
typedef int qla_host_t ;


 int Q8_FWCD_CNTRL_REQ ;
 int Q8_FWCD_OPCODE_CONFIG_MAC_RCV_MODE ;
 int bzero (TYPE_2__*,int) ;
 int qla_fw_cmd (int *,TYPE_2__*,int) ;

__attribute__((used)) static int
qla_set_mac_rcv_mode(qla_host_t *ha, uint16_t cntxt_id, uint32_t mode)
{
 qla_set_mac_rcv_mode_t rcv_mode;
 int ret;

 bzero(&rcv_mode, sizeof(qla_set_mac_rcv_mode_t));

 rcv_mode.hdr.cmd = Q8_FWCD_CNTRL_REQ;
 rcv_mode.hdr.opcode = Q8_FWCD_OPCODE_CONFIG_MAC_RCV_MODE;
 rcv_mode.hdr.cntxt_id = cntxt_id;

 rcv_mode.mode = mode;

 ret = qla_fw_cmd(ha, &rcv_mode, sizeof(qla_set_mac_rcv_mode_t));

 return ret;
}
