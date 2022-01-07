
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cmac {scalar_t__ offset; } ;
struct port_info {struct cmac mac; } ;
typedef int adapter_t ;


 scalar_t__ A_XGM_INT_STATUS ;
 scalar_t__ A_XGM_RX_CTRL ;
 int F_LINKFAULTCHANGE ;
 int F_RXEN ;
 struct port_info* adap2pinfo (int *,int) ;
 int t3_gate_rx_traffic (struct cmac*,int *,int *,int *) ;
 int t3_open_rx_traffic (struct cmac*,int ,int ,int ) ;
 int t3_read_reg (int *,scalar_t__) ;
 int t3_write_reg (int *,scalar_t__,int ) ;
 int t3_xgm_intr_enable (int *,int) ;

__attribute__((used)) static int t3_detect_link_fault(adapter_t *adapter, int port_id)
{
 struct port_info *pi = adap2pinfo(adapter, port_id);
 struct cmac *mac = &pi->mac;
 uint32_t rx_cfg, rx_hash_high, rx_hash_low;
 int link_fault;


 t3_gate_rx_traffic(mac, &rx_cfg, &rx_hash_high, &rx_hash_low);
 t3_write_reg(adapter, A_XGM_RX_CTRL + mac->offset, 0);


 (void) t3_read_reg(adapter, A_XGM_INT_STATUS + mac->offset);
 t3_xgm_intr_enable(adapter, port_id);


 t3_write_reg(adapter, A_XGM_RX_CTRL + mac->offset, F_RXEN);
 t3_open_rx_traffic(mac, rx_cfg, rx_hash_high, rx_hash_low);

 link_fault = t3_read_reg(adapter, A_XGM_INT_STATUS + mac->offset);
 return (link_fault & F_LINKFAULTCHANGE ? 1 : 0);
}
