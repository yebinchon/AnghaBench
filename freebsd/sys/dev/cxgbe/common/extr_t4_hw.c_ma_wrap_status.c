
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_MA_INT_WRAP_STATUS ;
 int CH_ALERT (struct adapter*,char*,int ,int) ;
 int G_MEM_WRAP_ADDRESS (int ) ;
 int G_MEM_WRAP_CLIENT_NUM (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static bool ma_wrap_status(struct adapter *adap, int arg, bool verbose)
{
 u32 v;

 v = t4_read_reg(adap, A_MA_INT_WRAP_STATUS);
 CH_ALERT(adap,
     "MA address wrap-around error by client %u to address %#x\n",
     G_MEM_WRAP_CLIENT_NUM(v), G_MEM_WRAP_ADDRESS(v) << 4);
 t4_write_reg(adap, A_MA_INT_WRAP_STATUS, v);

 return (0);
}
