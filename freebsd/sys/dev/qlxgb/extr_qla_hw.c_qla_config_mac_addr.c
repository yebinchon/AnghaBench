
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int qla_host_t ;
struct TYPE_5__ {int cntxt_id; int opcode; int cmd; } ;
struct TYPE_6__ {int mac_addr; int cmd; TYPE_1__ hdr; } ;
typedef TYPE_2__ qla_fw_cds_config_mac_addr_t ;


 int Q8_FWCD_ADD_MAC_ADDR ;
 int Q8_FWCD_CNTRL_REQ ;
 int Q8_FWCD_DEL_MAC_ADDR ;
 int Q8_FWCD_OPCODE_CONFIG_MAC_ADDR ;
 int bcopy (int *,int ,int) ;
 int bzero (TYPE_2__*,int) ;
 int qla_fw_cmd (int *,TYPE_2__*,int) ;

__attribute__((used)) static int
qla_config_mac_addr(qla_host_t *ha, uint8_t *mac_addr, uint16_t cntxt_id,
 uint32_t add_multi)
{
 qla_fw_cds_config_mac_addr_t mac_config;
 int ret;






 bzero(&mac_config, sizeof(qla_fw_cds_config_mac_addr_t));

 mac_config.hdr.cmd = Q8_FWCD_CNTRL_REQ;
 mac_config.hdr.opcode = Q8_FWCD_OPCODE_CONFIG_MAC_ADDR;
 mac_config.hdr.cntxt_id = cntxt_id;

 if (add_multi)
  mac_config.cmd = Q8_FWCD_ADD_MAC_ADDR;
 else
  mac_config.cmd = Q8_FWCD_DEL_MAC_ADDR;
 bcopy(mac_addr, mac_config.mac_addr,6);

 ret = qla_fw_cmd(ha, &mac_config, sizeof(qla_fw_cds_config_mac_addr_t));

 return ret;
}
