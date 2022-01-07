
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int A_TP_MTU_TABLE ;
 int G_MTUVALUE (int ) ;
 int G_MTUWIDTH (int ) ;
 int NMTUS ;
 int V_MTUINDEX (int) ;
 int V_MTUVALUE (int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_mtu_tbl(struct adapter *adap, u16 *mtus, u8 *mtu_log)
{
 u32 v;
 int i;

 for (i = 0; i < NMTUS; ++i) {
  t4_write_reg(adap, A_TP_MTU_TABLE,
        V_MTUINDEX(0xff) | V_MTUVALUE(i));
  v = t4_read_reg(adap, A_TP_MTU_TABLE);
  mtus[i] = G_MTUVALUE(v);
  if (mtu_log)
   mtu_log[i] = G_MTUWIDTH(v);
 }
}
