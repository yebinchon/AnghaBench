
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int u32 ;
struct cmac {unsigned int offset; TYPE_2__* adapter; } ;
struct TYPE_8__ {scalar_t__ rev; } ;
struct TYPE_9__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 scalar_t__ A_MPS_CFG ;
 scalar_t__ A_TP_PIO_ADDR ;
 scalar_t__ A_TP_PIO_DATA ;
 int A_TP_TX_DROP_CFG_CH0 ;
 scalar_t__ A_XGM_INT_ENABLE ;
 scalar_t__ A_XGM_PORT_CFG ;
 scalar_t__ A_XGM_RESET_CTRL ;
 scalar_t__ A_XGM_RX_CFG ;
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE_ERR_CNT ;
 scalar_t__ A_XGM_TX_CFG ;
 int CH_ERR (TYPE_2__*,char*,int) ;
 unsigned int F_DISPAUSEFRAMES ;
 unsigned int F_EN1536BFRAMES ;
 unsigned int F_ENFORCEPKT ;
 unsigned int F_ENHASHMCAST ;
 unsigned int F_ENJUMBO ;
 unsigned int F_MAC_RESET_ ;
 unsigned int F_PCS_RESET_ ;
 unsigned int F_PORT0ACTIVE ;
 unsigned int F_PORT1ACTIVE ;
 unsigned int F_RMFCS ;
 int F_SAFESPEEDCHANGE ;
 unsigned int F_TXPAUSEEN ;
 int M_PORTSPEED ;
 int V_PORTSPEED (int ) ;
 int macidx (struct cmac*) ;
 int msleep (int) ;
 int t3_mac_init (struct cmac*) ;
 unsigned int t3_read_reg (TYPE_2__*,scalar_t__) ;
 int t3_set_reg_field (TYPE_2__*,scalar_t__,unsigned int,unsigned int) ;
 scalar_t__ t3_wait_op_done (TYPE_2__*,scalar_t__,int,int,int,int) ;
 int t3_write_reg (TYPE_2__*,scalar_t__,unsigned int) ;
 int t3b_pcs_reset (struct cmac*) ;
 unsigned int xgm_reset_ctrl (struct cmac*) ;

__attribute__((used)) static int t3_mac_reset(struct cmac *mac, int portspeed)
{
 u32 val, store_mps;
 adapter_t *adap = mac->adapter;
 unsigned int oft = mac->offset;
 int idx = macidx(mac);
 unsigned int store;


 store_mps = t3_read_reg(adap, A_MPS_CFG);
 if (!idx)
  t3_set_reg_field(adap, A_MPS_CFG, F_PORT0ACTIVE, 0);
 else
  t3_set_reg_field(adap, A_MPS_CFG, F_PORT1ACTIVE, 0);



 t3_set_reg_field(adap, A_MPS_CFG, F_ENFORCEPKT, 0);

 t3_set_reg_field(adap, A_XGM_TX_CFG + oft, F_TXPAUSEEN, 0);


 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
 (void) t3_read_reg(adap, A_XGM_RESET_CTRL + oft);


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 store = t3_read_reg(adap, A_TP_PIO_DATA);

 msleep(10);


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 t3_write_reg(adap, A_TP_PIO_DATA, 0xc0000011);



 if (t3_wait_op_done(adap, A_XGM_RX_MAX_PKT_SIZE_ERR_CNT + oft,
       0x80000000, 1, 1000, 2) && portspeed < 0) {
  CH_ERR(adap, "MAC %d Rx fifo drain failed\n", idx);
  return -1;
 }

 if (portspeed >= 0) {
  u32 intr = t3_read_reg(adap, A_XGM_INT_ENABLE + oft);





  t3_set_reg_field(adap, A_XGM_PORT_CFG + oft,
      V_PORTSPEED(M_PORTSPEED) | F_SAFESPEEDCHANGE,
      portspeed | F_SAFESPEEDCHANGE);
  (void) t3_read_reg(adap, A_XGM_PORT_CFG + oft);
  t3_set_reg_field(adap, A_XGM_PORT_CFG + oft,
      F_SAFESPEEDCHANGE, 0);
  (void) t3_read_reg(adap, A_XGM_PORT_CFG + oft);
  t3_mac_init(mac);

  t3_write_reg(adap, A_XGM_INT_ENABLE + oft, intr);
 } else {

  t3_write_reg(adap, A_XGM_RESET_CTRL + oft, 0);
  (void) t3_read_reg(adap, A_XGM_RESET_CTRL + oft);

  val = xgm_reset_ctrl(mac);
  t3_write_reg(adap, A_XGM_RESET_CTRL + oft, val);
  (void) t3_read_reg(adap, A_XGM_RESET_CTRL + oft);
  if ((val & F_PCS_RESET_) && adap->params.rev) {
   msleep(1);
   t3b_pcs_reset(mac);
  }
  t3_write_reg(adap, A_XGM_RX_CFG + oft,
    F_DISPAUSEFRAMES | F_EN1536BFRAMES |
     F_RMFCS | F_ENJUMBO | F_ENHASHMCAST );
 }


 t3_write_reg(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
 t3_write_reg(adap, A_TP_PIO_DATA, store);


 t3_set_reg_field(adap, A_MPS_CFG, F_PORT1ACTIVE | F_PORT0ACTIVE,
    store_mps);


 t3_set_reg_field(adap, A_MPS_CFG, F_ENFORCEPKT, F_ENFORCEPKT);

 return 0;
}
