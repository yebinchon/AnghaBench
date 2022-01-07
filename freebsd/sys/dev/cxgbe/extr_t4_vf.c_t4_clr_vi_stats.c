
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H ;
 int A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L ;
 int VF_MPS_REG (int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static void
t4_clr_vi_stats(struct adapter *sc)
{
 int reg;

 for (reg = A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L;
      reg <= A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H; reg += 4)
  t4_write_reg(sc, VF_MPS_REG(reg), 0);
}
