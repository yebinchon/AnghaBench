
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int dummy; } ;


 int A_SGE_DEBUG_DATA_HIGH ;
 int A_SGE_DEBUG_DATA_LOW ;
 int A_SGE_DEBUG_INDEX ;
 int HTONL_NIBBLE (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static u32 read_sge_debug_data(struct cudbg_init *pdbg_init, u32 *sge_dbg_reg)
{
 struct adapter *padap = pdbg_init->adap;
 u32 value;
 int i = 0;

 for (i = 0; i <= 15; i++) {
  t4_write_reg(padap, A_SGE_DEBUG_INDEX, (u32)i);
  value = t4_read_reg(padap, A_SGE_DEBUG_DATA_LOW);

  sge_dbg_reg[(i << 1) | 1] = HTONL_NIBBLE(value);
  value = t4_read_reg(padap, A_SGE_DEBUG_DATA_HIGH);

  sge_dbg_reg[(i << 1)] = HTONL_NIBBLE(value);
 }
 return 0;
}
