
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_MC5_DB_DBGI_REQ_ADDR0 ;
 int CH_ERR (int *,char*,int ) ;
 scalar_t__ mc5_cmd_write (int *,int ) ;
 int t3_write_reg (int *,int ,int ) ;

__attribute__((used)) static int mc5_write(adapter_t *adapter, u32 addr_lo, u32 cmd)
{
 t3_write_reg(adapter, A_MC5_DB_DBGI_REQ_ADDR0, addr_lo);
 if (mc5_cmd_write(adapter, cmd) == 0)
  return 0;
 CH_ERR(adapter, "MC5 timeout writing to TCAM address 0x%x\n", addr_lo);
 return -1;
}
