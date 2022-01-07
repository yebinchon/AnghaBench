
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_CIM_DEBUGCFG ;
 int A_CIM_PI_LA_MADEBUGDATA ;
 int A_CIM_PO_LA_MADEBUGDATA ;
 int CIM_MALA_SIZE ;
 int F_LADBGEN ;
 int V_PILADBGRDPTR (int) ;
 int V_POLADBGRDPTR (int) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_cim_read_ma_la(struct adapter *adap, u32 *ma_req, u32 *ma_rsp)
{
 u32 cfg;
 int i, j, idx;

 cfg = t4_read_reg(adap, A_CIM_DEBUGCFG);
 if (cfg & F_LADBGEN)
  t4_write_reg(adap, A_CIM_DEBUGCFG, cfg ^ F_LADBGEN);

 for (i = 0; i < CIM_MALA_SIZE; i++) {
  for (j = 0; j < 5; j++) {
   idx = 8 * i + j;
   t4_write_reg(adap, A_CIM_DEBUGCFG, V_POLADBGRDPTR(idx) |
         V_PILADBGRDPTR(idx));
   *ma_req++ = t4_read_reg(adap, A_CIM_PO_LA_MADEBUGDATA);
   *ma_rsp++ = t4_read_reg(adap, A_CIM_PI_LA_MADEBUGDATA);
  }
 }
 t4_write_reg(adap, A_CIM_DEBUGCFG, cfg);
}
