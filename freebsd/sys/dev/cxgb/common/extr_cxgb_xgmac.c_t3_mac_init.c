
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct cmac {unsigned int offset; int stats; scalar_t__ multiport; TYPE_2__* adapter; } ;
struct addr_val_pair {int member_1; scalar_t__ member_0; } ;
struct TYPE_10__ {scalar_t__ rev; } ;
struct TYPE_11__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int ARRAY_SIZE (struct addr_val_pair*) ;
 scalar_t__ const A_XGM_RESET_CTRL ;
 scalar_t__ const A_XGM_RXFIFO_CFG ;
 scalar_t__ const A_XGM_RX_MAX_PKT_SIZE ;
 scalar_t__ const A_XGM_SERDES_CTRL ;
 scalar_t__ A_XGM_SERDES_STATUS1 ;

 scalar_t__ const A_XGM_TXFIFO_CFG ;

 int CH_ERR (TYPE_2__*,char*,int ) ;

 int F_CMULOCK ;
 int F_COPYPREAMBLE ;
 int F_DISERRFRAMES ;

 int F_DISPREAMBLE ;



 int F_ENNON802_3PREAMBLE ;
 int F_MAC_RESET_ ;
 int F_PCS_RESET_ ;

 int F_RXEN ;
 int F_RXENABLE ;
 int F_RXENFRAMER ;
 int F_RXSTRFRWRD ;
 int F_SERDESRESET_ ;
 int F_TXEN ;
 int F_TXENABLE ;
 int F_UNDERUNFIX ;
 scalar_t__ MAX_FRAME_SIZE ;
 scalar_t__ M_RXMAXFRAMERSIZE ;
 int M_TXFIFOTHRESH ;
 int V_RXMAXFRAMERSIZE (scalar_t__) ;
 int V_RXMAXPKTSIZE (scalar_t__) ;
 int V_TXFIFOTHRESH (int) ;
 int macidx (struct cmac*) ;
 int memset (int *,int ,int) ;
 int msleep (int) ;
 int t3_read_reg (TYPE_2__*,scalar_t__ const) ;
 int t3_set_reg_field (TYPE_2__*,scalar_t__ const,int,int) ;
 scalar_t__ t3_wait_op_done (TYPE_2__*,scalar_t__,int ,int,int,int) ;
 int t3_write_reg (TYPE_2__*,scalar_t__ const,int) ;
 int t3_write_regs (TYPE_2__*,struct addr_val_pair*,int ,unsigned int) ;
 int t3b_pcs_reset (struct cmac*) ;
 scalar_t__ uses_xaui (TYPE_2__*) ;
 int xaui_serdes_reset (struct cmac*) ;
 int xgm_reset_ctrl (struct cmac*) ;

int t3_mac_init(struct cmac *mac)
{
 static struct addr_val_pair mac_reset_avp[] = {
  { 134, 0 },
  { 146, 0 },
  { 147, 132 | 131 |
                  128 | 129 | 130 },
  { 136, 0 },
  { 137, 0 },
  { 145, 0 },
  { 144, 0 },
  { 143, 0 },
  { 142, 0 },
  { 141, 0 },
  { 140, 0 },
  { 139, 0 },
  { 138, 0 },
  { 135, 133 }
 };
 u32 val;
 adapter_t *adap = mac->adapter;
 unsigned int oft = mac->offset;

 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
 (void) t3_read_reg(adap, A_XGM_RESET_CTRL + oft);

 t3_write_regs(adap, mac_reset_avp, ARRAY_SIZE(mac_reset_avp), oft);
 t3_set_reg_field(adap, A_XGM_RXFIFO_CFG + oft,
    F_RXSTRFRWRD | F_DISERRFRAMES,
    uses_xaui(adap) ? 0 : F_RXSTRFRWRD);
 t3_set_reg_field(adap, A_XGM_TXFIFO_CFG + oft, 0, F_UNDERUNFIX);

 if (uses_xaui(adap)) {
  if (adap->params.rev == 0) {
   t3_set_reg_field(adap, A_XGM_SERDES_CTRL + oft, 0,
      F_RXENABLE | F_TXENABLE);
   if (t3_wait_op_done(adap, A_XGM_SERDES_STATUS1 + oft,
         F_CMULOCK, 1, 5, 2)) {
    CH_ERR(adap,
           "MAC %d XAUI SERDES CMU lock failed\n",
           macidx(mac));
    return -1;
   }
   t3_set_reg_field(adap, A_XGM_SERDES_CTRL + oft, 0,
      F_SERDESRESET_);
  } else
   xaui_serdes_reset(mac);
 }


 if (mac->multiport) {
  t3_write_reg(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
        V_RXMAXPKTSIZE(MAX_FRAME_SIZE - 4));
  t3_set_reg_field(adap, A_XGM_TXFIFO_CFG + oft, 0,
     F_DISPREAMBLE);
  t3_set_reg_field(adap, 147 + oft, 0, F_COPYPREAMBLE |
     F_ENNON802_3PREAMBLE);
  t3_set_reg_field(adap, A_XGM_TXFIFO_CFG + oft,
     V_TXFIFOTHRESH(M_TXFIFOTHRESH),
     V_TXFIFOTHRESH(64));
  t3_write_reg(adap, 134 + oft, F_TXEN);
  t3_write_reg(adap, 146 + oft, F_RXEN);
 }

 t3_set_reg_field(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
    V_RXMAXFRAMERSIZE(M_RXMAXFRAMERSIZE),
    V_RXMAXFRAMERSIZE(MAX_FRAME_SIZE) | F_RXENFRAMER);

 val = xgm_reset_ctrl(mac);
 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, val);
 (void) t3_read_reg(adap, A_XGM_RESET_CTRL + oft);
 if ((val & F_PCS_RESET_) && adap->params.rev) {
  msleep(1);
  t3b_pcs_reset(mac);
 }

 memset(&mac->stats, 0, sizeof(mac->stats));
 return 0;
}
