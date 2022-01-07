
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;


 int FW_PORT_CAP32_FC_RX ;
 int FW_PORT_CAP32_FC_TX ;
 int FW_PORT_CAP32_SPEED_100G ;
 int FW_PORT_CAP32_SPEED_100M ;
 int FW_PORT_CAP32_SPEED_10G ;
 int FW_PORT_CAP32_SPEED_1G ;
 int FW_PORT_CAP32_SPEED_25G ;
 int FW_PORT_CAP32_SPEED_40G ;
 int FW_PORT_CAP_SPEED_100G ;
 int FW_PORT_CAP_SPEED_100M ;
 int FW_PORT_CAP_SPEED_10G ;
 int FW_PORT_CAP_SPEED_1G ;
 int FW_PORT_CAP_SPEED_25G ;
 int FW_PORT_CAP_SPEED_40G ;
 int F_FW_PORT_CMD_RXPAUSE ;
 int F_FW_PORT_CMD_TXPAUSE ;
 int V_FW_PORT_CMD_LSPEED (int ) ;

__attribute__((used)) static uint32_t lstatus_to_fwcap(u32 lstatus)
{
 uint32_t linkattr = 0;






 if (lstatus & F_FW_PORT_CMD_RXPAUSE)
  linkattr |= FW_PORT_CAP32_FC_RX;
 if (lstatus & F_FW_PORT_CMD_TXPAUSE)
  linkattr |= FW_PORT_CAP32_FC_TX;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_100M))
  linkattr |= FW_PORT_CAP32_SPEED_100M;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_1G))
  linkattr |= FW_PORT_CAP32_SPEED_1G;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_10G))
  linkattr |= FW_PORT_CAP32_SPEED_10G;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_25G))
  linkattr |= FW_PORT_CAP32_SPEED_25G;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_40G))
  linkattr |= FW_PORT_CAP32_SPEED_40G;
 if (lstatus & V_FW_PORT_CMD_LSPEED(FW_PORT_CAP_SPEED_100G))
  linkattr |= FW_PORT_CAP32_SPEED_100G;

 return linkattr;
}
