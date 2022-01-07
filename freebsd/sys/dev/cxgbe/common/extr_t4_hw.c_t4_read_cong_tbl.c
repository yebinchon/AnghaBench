
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adapter {int dummy; } ;


 int A_TP_CCTRL_TABLE ;
 unsigned int NCCTRL_WIN ;
 unsigned int NMTUS ;
 unsigned int V_ROWINDEX (int) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

void t4_read_cong_tbl(struct adapter *adap, u16 incr[NMTUS][NCCTRL_WIN])
{
 unsigned int mtu, w;

 for (mtu = 0; mtu < NMTUS; ++mtu)
  for (w = 0; w < NCCTRL_WIN; ++w) {
   t4_write_reg(adap, A_TP_CCTRL_TABLE,
         V_ROWINDEX(0xffff) | (mtu << 5) | w);
   incr[mtu][w] = (u16)t4_read_reg(adap,
      A_TP_CCTRL_TABLE) & 0x1fff;
  }
}
