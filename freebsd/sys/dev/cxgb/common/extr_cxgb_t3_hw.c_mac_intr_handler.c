
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int xaui_pcs_align_change; int xaui_pcs_ctc_err; int serdes_signal_loss; int rx_fifo_ovfl; int tx_fifo_urun; int rx_fifo_parity_err; int tx_fifo_parity_err; } ;
struct cmac {scalar_t__ offset; TYPE_1__ stats; } ;
struct port_info {int link_fault; struct cmac mac; } ;
typedef int adapter_t ;
struct TYPE_4__ {unsigned int nports0; } ;


 scalar_t__ A_XGM_INT_CAUSE ;
 scalar_t__ A_XGM_INT_ENABLE ;
 int CH_ALERT (int *,char*,unsigned int) ;
 int F_RXFIFO_OVERFLOW ;
 int F_TXFIFO_UNDERRUN ;
 int F_XAUIPCSALIGNCHANGE ;
 int F_XAUIPCSCTCERR ;
 int F_XGM_INT ;
 int LF_MAYBE ;
 int M_RXFIFO_PRTY_ERR ;
 int M_SERDES_LOS ;
 int M_TXFIFO_PRTY_ERR ;
 int V_RXFIFO_PRTY_ERR (int ) ;
 int V_SERDES_LOS (int ) ;
 int V_TXFIFO_PRTY_ERR (int ) ;
 int XGM_INTR_FATAL ;
 struct port_info* adap2pinfo (int *,unsigned int) ;
 TYPE_2__* adapter_info (int *) ;
 int t3_fatal_err (int *) ;
 int t3_os_link_intr (struct port_info*) ;
 int t3_read_reg (int *,scalar_t__) ;
 int t3_set_reg_field (int *,scalar_t__,int,int ) ;
 int t3_write_reg (int *,scalar_t__,int) ;

__attribute__((used)) static int mac_intr_handler(adapter_t *adap, unsigned int idx)
{
 u32 cause;
 struct port_info *pi;
 struct cmac *mac;

 idx = idx == 0 ? 0 : adapter_info(adap)->nports0;
 pi = adap2pinfo(adap, idx);
 mac = &pi->mac;







 cause = (t3_read_reg(adap, A_XGM_INT_CAUSE + mac->offset)
   & ~(F_RXFIFO_OVERFLOW));

 if (cause & V_TXFIFO_PRTY_ERR(M_TXFIFO_PRTY_ERR)) {
  mac->stats.tx_fifo_parity_err++;
  CH_ALERT(adap, "port%d: MAC TX FIFO parity error\n", idx);
 }
 if (cause & V_RXFIFO_PRTY_ERR(M_RXFIFO_PRTY_ERR)) {
  mac->stats.rx_fifo_parity_err++;
  CH_ALERT(adap, "port%d: MAC RX FIFO parity error\n", idx);
 }
 if (cause & F_TXFIFO_UNDERRUN)
  mac->stats.tx_fifo_urun++;
 if (cause & F_RXFIFO_OVERFLOW)
  mac->stats.rx_fifo_ovfl++;
 if (cause & V_SERDES_LOS(M_SERDES_LOS))
  mac->stats.serdes_signal_loss++;
 if (cause & F_XAUIPCSCTCERR)
  mac->stats.xaui_pcs_ctc_err++;
 if (cause & F_XAUIPCSALIGNCHANGE)
  mac->stats.xaui_pcs_align_change++;
 if (cause & F_XGM_INT &
     t3_read_reg(adap, A_XGM_INT_ENABLE + mac->offset)) {
  t3_set_reg_field(adap, A_XGM_INT_ENABLE + mac->offset,
      F_XGM_INT, 0);


  pi->link_fault = LF_MAYBE;
  t3_os_link_intr(pi);
 }

 if (cause & XGM_INTR_FATAL)
  t3_fatal_err(adap);

 t3_write_reg(adap, A_XGM_INT_CAUSE + mac->offset, cause);
 return cause != 0;
}
