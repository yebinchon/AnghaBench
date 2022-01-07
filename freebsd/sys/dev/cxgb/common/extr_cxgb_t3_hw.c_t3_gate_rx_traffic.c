
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmac {scalar_t__ offset; int adapter; } ;


 scalar_t__ A_XGM_RX_CFG ;
 scalar_t__ A_XGM_RX_HASH_HIGH ;
 scalar_t__ A_XGM_RX_HASH_LOW ;
 int F_COPYALLFRAMES ;
 int F_DISBCAST ;
 int F_ENHASHMCAST ;
 int msleep (int) ;
 int t3_mac_disable_exact_filters (struct cmac*) ;
 int t3_read_reg (int ,scalar_t__) ;
 int t3_set_reg_field (int ,scalar_t__,int,int) ;
 int t3_write_reg (int ,scalar_t__,int ) ;

__attribute__((used)) static void t3_gate_rx_traffic(struct cmac *mac, u32 *rx_cfg,
          u32 *rx_hash_high, u32 *rx_hash_low)
{

 t3_mac_disable_exact_filters(mac);


 *rx_cfg = t3_read_reg(mac->adapter, A_XGM_RX_CFG + mac->offset);
 t3_set_reg_field(mac->adapter, A_XGM_RX_CFG + mac->offset,
    F_ENHASHMCAST | F_DISBCAST | F_COPYALLFRAMES,
    F_DISBCAST);

 *rx_hash_high = t3_read_reg(mac->adapter, A_XGM_RX_HASH_HIGH +
     mac->offset);
 t3_write_reg(mac->adapter, A_XGM_RX_HASH_HIGH + mac->offset, 0);

 *rx_hash_low = t3_read_reg(mac->adapter, A_XGM_RX_HASH_LOW +
     mac->offset);
 t3_write_reg(mac->adapter, A_XGM_RX_HASH_LOW + mac->offset, 0);


 msleep(1);
}
