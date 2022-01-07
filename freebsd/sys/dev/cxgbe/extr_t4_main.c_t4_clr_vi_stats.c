
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct adapter {int dummy; } ;


 int A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H ;
 int A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L ;
 int A_PL_INDIR_CMD ;
 int A_PL_INDIR_DATA ;
 int VF_MPS_REG (int) ;
 int V_PL_ADDR (int ) ;
 int V_PL_AUTOINC (int) ;
 int V_PL_VFID (int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void
t4_clr_vi_stats(struct adapter *sc, u_int vin)
{
 int reg;

 t4_write_reg(sc, A_PL_INDIR_CMD, V_PL_AUTOINC(1) | V_PL_VFID(vin) |
     V_PL_ADDR(VF_MPS_REG(A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L)));
 for (reg = A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L;
      reg <= A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H; reg += 4)
  t4_write_reg(sc, A_PL_INDIR_DATA, 0);
}
